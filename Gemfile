source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

platforms :jruby do
	gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jruby-win32ole', :require => 'win32ole'
	gem 'jruby-openssl'
end

platforms :ruby do
	gem 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyrhino'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'net-ping' # but still doesn't work

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
