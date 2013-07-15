#
# Cookbook Name:: hypertable
# Recipe:: default
#
# Copyright 2013, Jordi Llonch
#
# All rights reserved - Do Not Redistribute
#

directory node[:hypertable][:package_dir] do
  owner 'root'
  group 'root'
  mode 0755
end

remote_file node[:hypertable][:package_cache] do
  action :create_if_missing
  source node[:hypertable][:package_url]
  owner 'root'
  group 'root'
  mode 00644
end

dpkg_package "hypertable" do
  source node[:hypertable][:package_cache]
  not_if "dpkg -s hypertable"
end

# link version to current
link node[:hypertable][:path] do
  to "#{node[:hypertable][:path_base]}/#{node[:hypertable][:version]}"
end

execute "fhsize hypertable" do
  command "/bin/bash #{node[:hypertable][:path]}/bin/fhsize.sh"
  cwd node[:hypertable][:path]
  not_if { ::Dir.exists?("#{node[:hypertable][:path]}/run") }
end

if Chef::Config[:solo]
  hypertable_hyperspaces = []
else
  hypertable_hyperspaces = search(:node, "role:hypertable_hyperspace")
end

# install notification hook
template "/opt/hypertable/current/conf/notification-hook.sh" do
  owner "root"
  group "root"
  mode "0755"
end

# install hypertable.cfg
template "/opt/hypertable/current/conf/hypertable.cfg" do
  owner "root"
  group "root"
  mode "0644"
  variables ({
    :hypertable_hyperspaces => hypertable_hyperspaces
  })
end

user_ulimit node[:hypertable][:user] do
  filehandle_limit 65536 # optional
end

iptables_rule "port_hypertable"

