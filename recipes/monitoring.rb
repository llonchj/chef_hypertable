#
# Cookbook Name:: hypertable
# Recipe:: monitoring
#
# Copyright 2013, Jordi Llonch
#
# All rights reserved - Do Not Redistribute
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