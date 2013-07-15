#
# Cookbook Name:: hypertable
# Recipe:: monitoring
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


%w(rrdtool graphviz).each do |name|
  package name
end

%w(sinatra rack thin json titleize).each do |name|
  gem_package name
end

#/opt/hypertable/current/bin/start-monitoring.sh
#/opt/hypertable/current/bin/stop-monitoring.sh


#
#
#
## /opt/hypertable/current/Monitoring/htmonitoring.rb

##        YAML::ENGINE.yamler = "syck"




#
# =>  FIX RRDTOOL
#

##  mv /usr/bin/rrdtool /usr/bin/rrdtool.orig
##  cat > /usr/bin/rrdtool  <<EOF
##  #!/bin/bash
##  
##  export LD_LIBRARY_PATH=/usr/lib/:/usr/lib64/
##  /usr/bin/rrdtool.orig \$@
##  EOF
##  
##  chmod 755 /usr/bin/rrdtool 