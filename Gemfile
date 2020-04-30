source 'https://rubygems.org'

ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.8'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0', '>= 5.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.7.1'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Haml as the templating library
gem 'haml'
# Use jquery as the JavaScript library
gem 'jquery-rails', '>= 4.0.4'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '>= 2.5.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.3', '>= 2.3.1'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 1.0.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.2', '>= 2.2.1'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails', '>= 3.3.3'
  gem 'autotest'
end

group :production do
  gem 'pg' # for Heroku deployment
  gem 'rails_12factor'
end
