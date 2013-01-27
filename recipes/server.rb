#
# Cookbook Name:: hsqldb
# Recipe:: server
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "hsqldb"

service "hsqldb" do
  action [:enable, :start]
end