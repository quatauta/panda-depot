source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "rails", "~> 6.1" # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"

# gem "bcrypt", "~> 3.1" # Use Active Model has_secure_password
gem "bootsnap", "~> 1.7", require: false # Reduces boot times through caching; required in config/boot.rb
gem "haml", "~> 5.2"
gem "haml-rails", "~> 2.0"
gem "honeybadger", "~> 4.9"
# gem "image_processing", "~> 1.2" # Use Active Storage variant
gem "jbuilder", "~> 2.11" # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "puma", "~> 5.5" # Use Puma as the app server
gem "rack-contrib", "~> 2.3" # rack middleware for locale based on HTTP_ACCEPT_LANGUAGE
gem "rails-i18n", "~> 6.0" # localization data
# gem "redis", "~> 4.0" # Use Redis adapter to run Action Cable in production
gem "sass-rails", "~> 6.0" # Use SCSS for stylesheets
gem "sqlite3", "~> 1.4" # Use sqlite3 as the database for Active Record
gem "turbolinks", "~> 5.2" # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "tzinfo-data"
gem "webpacker", "~> 5.2" # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker

group :development, :test do
  gem "brakeman", ">= 5.0", require: false
  gem "bullet", "~> 6.1"
  gem "bundler-audit", ">= 0.8", require: false
  gem "bundler-leak", ">= 0.2", require: false
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "fasterer", ">= 0.9", require: false
  gem "haml-lint", ">= 0.999", require: false
  gem "libyear-bundler", ">= 0.5", require: false
  gem "rubocop", ">= 1.14", require: false
  gem "rubocop-i18n", ">= 3.0", require: false
  gem "rubocop-performance", ">= 1.11.2", require: false
  gem "rubocop-rails", ">= 2.11", require: false
  gem "rubocop-rake", ">= 0.5", require: false
  gem "standard", ">= 1.1.1", require: false
end

group :development do
  gem "pry", ">= 0.14"
  gem "listen", ">= 3.3"
  gem "rack-mini-profiler", ">= 2.0" # Display performance information such as SQL time and flame graphs for each request in your browser. Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem "spring" # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "web-console", ">= 4.1" # Access an interactive console on exception pages or by calling "console" anywhere in the code.
end

group :test do
  gem "capybara", ">= 3.35" # Adds support for Capybara system testing and selenium driver
  gem "selenium-webdriver"
  gem "webdrivers" # Easy installation and use of web drivers to run system tests with browsers
end
