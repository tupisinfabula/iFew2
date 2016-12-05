source 'https://rubygems.org'

# FRAMEWORKS
#
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

# gem 'rspotify'
gem 'omniauth'
gem 'omniauth-spotify'


# FILE MANAGEMENT
#
# to upload images
gem 'carrierwave'
gem 'mini_magick'

# AUTHENTICATION
#
gem 'devise'

# STYLESHEETS
#
gem 'bootstrap-sass', '~> 3.3.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'animate-rails'

# JAVASCRIPT
#
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# PDF
#
# wkhtmltopdf wrapper, transform html into pdf. Used for generating reports.
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'factory_girl_rails'
  # Generate Fake Data
  gem 'faker'
  # Ability to set breakpoints in the code and jump in via the console.
  gem 'pry'
  # Prints stuff in the console with colors and indentation for readability.
  gem 'awesome_print'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  # Use sqlite3 as the database for Active Record - Locally
  gem 'sqlite3'
end

# CODING STYLE
#
gem 'rubocop'
gem 'rails_best_practices'


# TESTING
#
group :test do
  # Allows to generate a number of different reports after the test has been completed.
  gem 'minitest-reporters'
end
# For Heroku
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
