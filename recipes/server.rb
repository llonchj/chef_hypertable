#
# Cookbook Name:: hypertable
# Recipe:: server
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "hypertable"

service "hypertable" do
  action [:enable, :start]
end