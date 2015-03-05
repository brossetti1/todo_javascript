source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'less-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'acts-as-taggable-on', '~> 3.4'
# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'devise'
#easy forms
#rails generate simple_form:install --bootstrap for bootstrap
gem 'simple_form'
gem 'pry-rails'
gem 'therubyracer', platforms: :ruby
# bootswatcb for rails, bootstrap templates
gem 'twitter-bootswatch-rails', '~> 3.3'
gem 'twitter-bootswatch-rails-fontawesome', '~> 4.3'
gem 'twitter-bootswatch-rails-helpers'

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.3.3'


  gem 'haml'
  gem 'seed_dump'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'faker'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  # <% require 'pry'; binding.pry %>
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring', '<= 1.3.2'
  gem 'annotate', '~> 2.6.5'
  gem 'kramdown', :groups => [:development], :require => false
  gem 'dotenv-rails', :groups => [:development, :test]
end


group :production do
  gem 'rack-cors' # Frontend Support
  gem 'pg'
  gem 'rails_12factor'
end

ruby '2.1.5'



