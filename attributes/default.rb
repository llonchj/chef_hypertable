
default[:hypertable][:cluster_name] = "hypertable"

default[:hypertable][:version] = "0.9.7.8"
default[:hypertable][:package_file] = "hypertable-#{node[:hypertable][:version]}-linux-x86_64.deb"

default[:hypertable][:package_url] = "http://cdn.hypertable.com/packages/#{node[:hypertable][:version]}/#{node[:hypertable][:package_file]}"

default[:hypertable][:user] = "root"

# default[:hypertable][:package_dir] = Chef::Config[:file_cache_path]
default[:hypertable][:package_dir] = "/var/chef/downloads"
default[:hypertable][:package_cache] = "#{node[:hypertable][:package_dir]}/#{node[:hypertable][:package_file]}"

default[:hypertable][:path_base] = "/opt/hypertable"
default[:hypertable][:path_admin] = node[:hypertable][:path_base]
default[:hypertable][:path] = "#{node[:hypertable][:path_base]}/current"

default[:hypertable][:dfs] = "local"
default[:hypertable][:distro] = ""

#
default[:hypertable][:network_interface] = nil

#
# Applicable roles for the nodes
#
default[:hypertable][:role][:hypertable_master] = "hypertable_master"
default[:hypertable][:role][:hypertable_slave] = "hypertable_slave"
default[:hypertable][:role][:hypertable_hyperspace] = "hypertable_hyperspace"
default[:hypertable][:role][:hypertable_thriftbroker_additional] = "hypertable_thriftbroker_additional"

# node attribute used in capistrano-chef (hostname, fqdn, ipaddress), default :fqdn
default[:hypertable][:node_attribute] = :fqdn

#default[:hypertable][:dfs] = "hadoop"
#default[:hypertable][:distro] = "cdh4"

default[:hypertable][:filehandle_limit] = 65536

# default[:hypertable][:url] = "http://cdn.hypertable.com/packages/#{node[:hypertable][:version]}/hypertable-default[:hypertable][:version]-linux-x86_64.rpm"
# 
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-linux-x86_64.deb
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-linux-x86_64.rpm
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-linux-x86_64.tar.bz2
# 
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-osx_10.7-x86_64.dmg
# 
#
# platform only Fedora
#
#default[:hypertable][:url] = "http://cdn.hypertable.com/packages/#{node[:hypertable][:version]}/hypertable-default[:hypertable][:version]-linux-x86_64.rpm"

