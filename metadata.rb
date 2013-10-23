name             'seccubus_cookbook'
maintainer       'Michael de Bruin'
maintainer_email 'mgbruin@dwaalspoor.org'
description      'Install Seccubus'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'
depends          'openvas'

%w{ redhat centos }.each do |os|
  supports os
end
