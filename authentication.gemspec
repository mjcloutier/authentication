$:.push File.expand_path('../lib', __FILE__)

require 'authentication/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'authentication'
  s.version     = Authentication::VERSION
  s.authors     = ['Michael Cloutier']
  s.email       = ['mcloutier@clarityservices.com']
  s.homepage    = 'https://github.com/mjcloutier/authentication'
  s.summary     = 'Mountable Authentication Engine.'
  s.description = 'Mountable Authentication Engine'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  # Rails Dependency
  s.add_dependency 'rails', '>= 4.1'

  # Auth Dependencies
  s.add_dependency 'warden'
  s.add_dependency 'devise', '>= 4.0.0.rc2'
  s.add_dependency 'devise_security_extension'
  s.add_dependency 'devise_campaignable'
  s.add_dependency 'devise_lastseenable'
  s.add_dependency 'rails_email_validator'

  # UX Dependencies
  s.add_dependency 'haml-rails'
  s.add_dependency 'simple_form'
end
