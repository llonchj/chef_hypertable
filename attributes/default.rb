
default[:hypertable][:cluster_name] = "hypertable"

default[:hypertable][:version] = "0.9.7.9"
default[:hypertable][:package_file] = "hypertable-#{node[:hypertable][:version]}-linux-x86_64.deb"

default[:hypertable][:package_url] = "http://cdn.hypertable.com/packages/#{node[:hypertable][:version]}/#{node[:hypertable][:package_file]}"

default[:hypertable][:user] = "root"

default[:hypertable][:package_dir] = Chef::Config[:file_cache_path]
default[:hypertable][:package_cache] = "#{node[:hypertable][:package_dir]}/#{node[:hypertable][:package_file]}"

default[:hypertable][:etc_path] = "/etc/opt/hypertable"
default[:hypertable][:path_base] = "/opt/hypertable"
default[:hypertable][:path_admin] = node[:hypertable][:path_base]
default[:hypertable][:path_version] = "#{node[:hypertable][:path_base]}/#{node[:hypertable][:version]}"
default[:hypertable][:path] = "#{node[:hypertable][:path_base]}/current"

default[:hypertable][:dfs] = "local"
default[:hypertable][:distro] = ""

#
# Hypertable Configuration Settings
#
default[:hypertable][:conf]["HdfsBroker.Hadoop.ConfDir"] = "/etc/hadoop/conf"
default[:hypertable][:conf]["CephBroker.MonAddr"] = "10.0.1.245:6789"
default[:hypertable][:conf]["DfsBroker.Local.Root"] = "fs/local"
default[:hypertable][:conf]["DfsBroker.Port"] = 38030
default[:hypertable][:conf]["Hyperspace.Replica.Port"] = 38040
default[:hypertable][:conf]["Hyperspace.Replica.Dir"] = "hyperspace"
default[:hypertable][:conf]["Hypertable.Master.Port"] = "38050"
default[:hypertable][:conf]["Hypertable.RangeServer.Port"] = 38060
default[:hypertable][:conf]["ThriftBroker.Port"] = 38080

#default[:hypertable][:conf]["Hypertable.Logging.Level"] = "info"
#default[:hypertable][:conf]["Hypertable.Network.Interface"] = nil
#default[:hypertable][:conf]["Hypertable.RangeServer.Range.RowSize.Unlimited"]=true
#default[:hypertable][:conf]["Hyperspace.Client.Datagram.SendPort"] = 38049

default[:hypertable][:monitoring][:included_recipes] = %w(build-essential hypertable)
default[:hypertable][:monitoring][:included_packages] = %w(rrdtool graphviz)
default[:hypertable][:monitoring][:included_gem_packages] = %w(sinatra rack thin json titleize)



#
# Applicable roles for the nodes
# (Deprecated, support will be removed in 0.2)
#
default[:hypertable][:role][:hypertable_master] = "hypertable_master"
default[:hypertable][:role][:hypertable_slave] = "hypertable_slave"
default[:hypertable][:role][:hypertable_hyperspace] = "hypertable_hyperspace"
default[:hypertable][:role][:hypertable_thriftbroker_additional] = "hypertable_thriftbroker_additional"

#
# Capistrano Capfile configuration
#

# node attribute used in capistrano-chef (hostname, fqdn, ipaddress), default :fqdn
default[:hypertable][:node_attribute] = :fqdn

#
# File Open Limit
#

default[:hypertable][:filehandle_limit] = 65536


##
## Other platform support (Future)
##

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

