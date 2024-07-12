# Gemfile

source 'https://rubygems.org'
ruby '3.1.2'

# Rails
gem 'rails', '~> 7.0'

# Database
gem 'pg', '~> 1.1'

# Web Server
gem 'puma', '~> 5.0'

# Stylesheets
gem 'sass-rails', '>= 6'

# JavaScript
gem 'webpacker', '~> 5.0'

# Turbolinks
gem 'turbolinks', '~> 5'

# Authentication
gem 'devise'

# Geocoding
gem 'geocoder'

# Cloudinary for image hosting
gem 'cloudinary', '~> 1.16.0'

# Form handling
gem 'simple_form', github: 'heartcombo/simple_form'

# Search
gem 'pg_search', '~> 2.3.0'

# Icons
gem 'font-awesome-sass', '~> 5.6.1'

# Development and Test
group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

# Development only
group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

# Test only
group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

# Windows only
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
