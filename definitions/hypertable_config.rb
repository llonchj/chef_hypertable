#
# Cookbook Name:: hypertable
# Definition:: hypertable_config
#
# Copyright 2013, Jordi Llonch
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


define :hypertable_config do

  cluster_name = params[:cluster_name] or node[:hypertable][:cluster_name]

  if Chef::Config[:solo]
    hyperspace_servers = []
  else
    hyperspace_servers = search(:node, 'recipes:hypertable\:\:hyperspace') #' AND hypertable_cluster_name=#{cluster_name}')
    hyperspace_servers = hyperspace_servers.sort_by { |node| node[:fqdn] }
  end

  # install hypertable.cfg
  template params[:name] do
    owner params[:owner]
    group params[:group]
    mode params[:mode]
    variables ({
      :hyperspace_servers => hyperspace_servers
    })
  end

end