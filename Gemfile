source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=ruby2.0.0rails4.0.8

gem 'rails', '4.0.8'

group :development, :test do
    # Use sqlite3 as the database for Active Record, even though PostgreSQL for Heroku.
    # So much easier that PostgreSQL, and using two different DBs ensures I stay portable.
    gem 'sqlite3', '1.3.8'
    # RSpec for testing, with generators
    gem 'rspec-rails', '2.13.1'
    gem 'guard-rspec', '2.5.0'
end

group :test do
	# Use Capybara to simulate user interaction using
	# English-like syntax, together with Selenium
	gem 'selenium-webdriver', '2.35.1'
	gem 'capybara', '2.1.0'
	# for OS X
	gem 'growl', '1.0.3'
	# for Linux
	#gem 'libnotify', '0.8.0'
	# for Windows
	#gem 'commitSuicide', '6.6.6'
end

group :production do
	# Heroku deployment, so:
	# Use PostgreSQL
	gem 'pg', '0.15.1'
	# Static assets
	gem 'rails_12factor', '0.0.2'
end

# Use SCSS (Sassy CSS) for stylesheets, with Twittter's Bootstrap CSS rules
gem 'sass-rails', '4.0.1'
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
