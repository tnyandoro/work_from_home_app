source 'https://rubygems.org'
ruby '>=2.7.0'

# image uploads
gem 'carrierwave'
gem 'cloudinary'
# devise
gem 'devise'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
gem 'pg'
gem 'rails'
gem 'rubocop-rspec', require: false
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# A configurable and documented Rails view helper for adding gravatars into your Rails application.
gem 'gravatar_image_tag', '~> 1.2'

# Use Active Storage variant
gem 'activestorage', '~> 6.1', '>= 6.1.1'
# gem 'image_processing', '~> 1.2'

gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem 'shrine', '~> 3.3'
gem 'spring', '~> 2.1', '>= 2.1.1'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false
gem 'hirb'
gem 'rubocop', '~> 1.8', '>= 1.8.1'
platforms :mswin do
  gem 'wdm', group: %i[development test]
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 3.29'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.2'
  gem 'rubocop-rails', require: false
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
  gem 'shoulda-matchers', '~> 4.5', '>= 4.5.1'
  gem 'webdrivers'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  # Use postgresql as the database for Active Record
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'binding_of_caller'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'simplecov', require: false, group: :test
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
