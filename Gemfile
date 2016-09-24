source 'https://rubygems.org'

ruby '2.2.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.5'
end
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views


gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'factory_girl'
end
gem 'rails-controller-testing'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg'
end

gem 'devise'
# the default settings will enable these basic functions but you can also customize the gem in many ways to add features for almost any possibility (Facebook login, reset password, and so on). Like a lot of gems, Devise is also designed to be very unobtrusive to keep things simple: most of the functionality and even the views are hidden from your application code and run behind the scenes, so it won’t add a ton of new files to your code. However, if you wish to customize the functionality or the views--like the login form for instance--you can run a command to add the views to your application views folder, and you can edit them from there.

gem 'cancancan'
# CanCanCan refers to each authorization rule as an ability. You can define authorization rules within the ability.rb file. In this example, we're going to define the ability for a user to edit his/her own profile--or more accurately--prevent him/her from editing another user's profile.

gem 'will_paginate', '~> 3.1.0' #Pagination
gem 'stripe'
gem 'dalli'
gem "brakeman", :require => false
gem 'redis-rails'
