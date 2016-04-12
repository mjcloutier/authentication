source 'https://rubygems.org'

gemspec

platforms :ruby do
  gem 'mysql2'
  gem 'bson_ext'
end

platform :jruby do
  gem 'activerecord-jdbcmysql-adapter'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', platform: :ruby
  gem 'bullet'
  gem 'meta_request'
  gem 'web-console', platform: :ruby
  gem 'quiet_assets'
end

group :test do
  gem 'minitest-spec-rails'
  gem 'minitest-reporters'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end
