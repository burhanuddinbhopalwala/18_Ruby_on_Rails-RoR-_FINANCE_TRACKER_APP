source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use Puma as the app server
gem 'puma', '~> 3.11'

# 1: Devise authentication system
gem "devise"
# gem "devise-bootstrap-views" # NOT NEEDED included in devise :)
=begin 
- Devise install steps
rails generate devise:install
rails generate devise User
rake db:migrate
=end 

# 2: jquey and twitter booststrap gem
gem "jquery-rails"
gem "twitter-bootstrap-rails"
gem "font-awesome-rails"
=begin
- Twitter bootstrap install steps
rails generate bootstrap:install static
rails generate bootstrap:layout application

- And then run these commands
rails generate devise:views:locale en 
rails generate devise:views:bootstrap_templates  
=end

# 3: Gem for getting the real time prices of the stocks using GAPI
gem "stock_quote", '~> 2.0.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'duktape'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# 4: Use ActiveModel has_secure_password, not required with Devise :)
# gem 'bcrypt', '~> 3.1.7'
# 5: for pagination
gem "will_paginate", "3.1.5"
gem "bootstrap-will_paginate", "1.0.0"

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # 6: Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  # 7: For testing rails controller 
  gem "rails-controller-testing"
end

# 8:
group :production do
  gem "pg"
  # gem 'rails_12factor' # Not needed for Rails 5 onwards 
end 

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
