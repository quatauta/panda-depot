source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '>= 6.1.3.2' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'

# gem 'bcrypt', '>= 3.1.7' # Use Active Model has_secure_password
gem 'bootsnap', '>= 1.4.4', require: false # Reduces boot times through caching; required in config/boot.rb
gem "haml", "~> 5.2"
gem "haml-rails", "~> 2.0"
gem "honeybadger", ">= 4.0"
# gem 'image_processing', '>= 1.2' # Use Active Storage variant
gem 'jbuilder', '>= 2.7' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'puma', '>= 5.0' # Use Puma as the app server
gem "rack-contrib", ">= 2.3" # rack middleware for locale based on HTTP_ACCEPT_LANGUAGE
gem "rails-i18n", ">= 6.0" # localization data
# gem 'redis', '>= 4.0' # Use Redis adapter to run Action Cable in production
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets
gem 'sqlite3', '>= 1.4' # Use sqlite3 as the database for Active Record
gem 'turbolinks', '>= 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'tzinfo-data'
gem 'webpacker', '>= 5.0' # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'web-console', '>= 4.1.0' # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'rack-mini-profiler', '>= 2.0' # Display performance information such as SQL time and flame graphs for each request in your browser. Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '>= 3.3'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  gem "brakeman", "~> 5.0"
  gem "bundler-audit", ">= 0.8.0"
  gem "bundler-leak", ">= 0.2.0"
  gem "fasterer", ">= 0.9.0"
  gem "libyear-bundler", ">= 0.5.0"
  gem "rspec", ">= 3.10.0"
  gem "rspec_junit_formatter", ">= 0.4.0"
  gem "rubocop", ">= 1.14.0"
  gem "rubocop-performance", ">= 1.11.2"
  gem "rubocop-rake", ">= 0.5.0"
  gem "rubocop-rspec", ">= 2.3.0"
  gem "rubycritic", ">= 4.6.0"
  gem "simplecov", ">= 0.20.0"
  gem "standard", ">= 1.1.1"
end

group :test do
  gem 'capybara', '>= 3.26' # Adds support for Capybara system testing and selenium driver
  gem "haml-lint", ">= 0.999"
  gem 'selenium-webdriver'
  gem 'webdrivers' # Easy installation and use of web drivers to run system tests with browsers
end
