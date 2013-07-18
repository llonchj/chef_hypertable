name             'hypertable'
maintainer       'Jordi Llonch'
maintainer_email 'llonchj@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures hypertable'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.5'

%w(ubuntu).each do |sup|
  supports sup
end

%w(build-essential iptables ulimit).each do |name|
  depends name
end
