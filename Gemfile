source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc2'

# DATABASE - CONFIG
	gem 'mongoid', git: 'git://github.com/mongoid/mongoid.git'

# SERVER - CONFIG
	gem 'unicorn'

# ASSETS - CONFIG
	gem 'sass-rails', '~> 4.0.0.rc2'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
	gem 'haml-rails'

# ASSETS - FEATURES
	gem 'jquery-rails'
	gem 'underscore-rails'
	gem 'turbolinks'
	gem 'jquery-turbolinks'

# USER MANAGEMENT
	gem 'bcrypt-ruby', '~> 3.0.0'

# PAYMENT PROCESSING
	gem 'stripe'

# FILE UPLOADS
	gem 'carrierwave'
	gem 'fog'
	gem 'rmagick'

# DEBUGGER
	gem 'pry-rails'
	group :development do
		gem 'better_errors'
		gem 'binding_of_caller'
	end

# TESTING
	group :development, :test do
		gem 'rspec-rails'
		gem 'guard-rspec'
		gem 'growl'
	end

	group :test do
		gem 'database_cleaner'
		gem 'factory_girl_rails'
		gem 'shoulda-context'
		gem 'shoulda-matchers'
		gem 'capybara'
	end

# MISC
	gem 'jbuilder', '~> 1.2'

	group :doc do
	  # bundle exec rake doc:rails generates the API under doc/api.
	  gem 'sdoc', require: false
	end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
