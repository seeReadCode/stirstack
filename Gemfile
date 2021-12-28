source 'https://rubygems.org'
git_source(:github) { |_repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '6.1.4.4'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'inertia_rails', git: 'https://github.com/inertiajs/inertia-rails'
gem 'pg'
gem 'puma'
gem 'sass-rails'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 5.0'
  gem 'shoulda-matchers'
end

group :test do
  gem 'capybara'
  gem 'webdrivers', '~> 4.0', require: false
end

group :development do
  gem 'annotate'
  gem 'brakeman', '~> 5.1'
  gem 'bundle-audit'
  gem 'guard', ' 2.18'
  gem 'guard-brakeman', ' 0.8.6'
  gem 'guard-eslint', require: false
  gem 'guard-rails', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', ' 1.5'
  gem 'guard-webpacker'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rails-erd', '~> 1.6'
  gem 'rubocop', ' 1.22'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-rspec'
  gem 'rubocop-thread_safety'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end
