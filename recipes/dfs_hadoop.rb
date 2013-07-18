#
# Cookbook Name:: hypertable
# Recipe:: dfs_hadoop
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

execute "set hypertable dfs folder permissions" do
  command "sudo -u hdfs hadoop fs -chmod 777 /hypertable"
  action :nothing
end

execute "create hypertable dfs folder" do
  command "sudo -u hdfs hadoop fs -mkdir -p /hypertable"
  not_if "sudo -u hdfs hadoop fs -test -d /hypertable"
  notifies :run, resources("execute[set hypertable dfs folder permissions]"), :immediately
end

