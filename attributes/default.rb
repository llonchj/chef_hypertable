
default[:hypertable][:version] = "0.9.7.6"

#
# platform only Fedora
#
#default[:hypertable][:url] = "http://cdn.hypertable.com/packages/#{node[:hypertable][:version]}/hypertable-default[:hypertable][:version]-linux-x86_64.rpm"

default[:hypertable][:package_file] = "hypertable-#{node[:hypertable][:version]}-linux-x86_64.deb"
default[:hypertable][:package_url] = "http://cdn.hypertable.com/packages/#{node[:hypertable][:version]}/#{node[:hypertable][:package_file]}"
default[:hypertable][:package_cache] = "#{Chef::Config[:file_cache_path]}/#{node[:hypertable][:package_file]}"

# default[:hypertable][:url] = "http://cdn.hypertable.com/packages/#{node[:hypertable][:version]}/hypertable-default[:hypertable][:version]-linux-x86_64.rpm"
# 
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-linux-x86_64.deb
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-linux-x86_64.rpm
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-linux-x86_64.tar.bz2
# 
# http://cdn.hypertable.com/packages/0.9.7.6/hypertable-0.9.7.6-osx_10.7-x86_64.dmg
# 
