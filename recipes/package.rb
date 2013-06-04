#
# Cookbook Name:: hypertable
# Recipe:: package
#
# Copyright 2013, Jordi Llonch
#
# All rights reserved - Do Not Redistribute
#

remote_file node[:hypertable][:package_cache] do
  action :create_if_missing
  source node[:hypertable][:package_url]
  owner 'root'
  group 'root'
  mode 00644
  #not_if { ::File.exists?(node[:hypertable][:package_cache]) }
end

dpkg_package "hypertable" do
  source node[:hypertable][:package_cache]
end

link "/opt/hypertable/current" do
  to "/opt/hypertable/#{node[:hypertable][:version]}"
end

