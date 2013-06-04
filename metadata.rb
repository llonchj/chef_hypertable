name             'hypertable'
maintainer       'Jordi Llonch'
maintainer_email 'llonchj@gmail.com'
license          'All rights reserved'
description      'Installs/Configures hypertable'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w(ubuntu).each do |sup|
  supports sup
end
