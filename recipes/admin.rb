
#
# Install capistrano and capistrano-chef
#
%w(capistrano capistrano-chef).each do |name|
  gem_package name
end

directory "/root/hypertable" do
  owner "root"
  group "root"
  mode "0755"
end

template "/root/hypertable/Capfile" do
  owner "root"
  group "root"
  mode "0644"
end
