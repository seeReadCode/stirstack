source 'https://rubygems.org'
git_source(:github) { |_repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', '~> 1.9', require: false
gem 'concurrent-ruby', '< 1.3.4' # https://stackoverflow.com/questions/79360526/uninitialized-constant-activesupportloggerthreadsafelevellogger-nameerror
gem 'inertia_rails', git: 'https://github.com/inertiajs/inertia-rails'
gem 'pg', '~> 1.3'
gem 'puma', '~> 5.5'
gem 'rails', '~> 7.0.8.5'
gem 'sass-rails', '~> 6.0'

group :development, :test do
  gem 'byebug', '~> 11.1', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'overcommit', '~> 0.58'
  gem 'rspec-rails', '~> 5.0'
  gem 'shoulda-matchers', '~> 5.0'
end

group :test do
  gem 'capybara', '~> 3.36'
  gem 'webdrivers', '~> 4.7', require: false
end

group :development do
  gem 'annotate', '~> 3.2'
  gem 'brakeman', '~> 5.2'
  gem 'bundle-audit', '~> 0.1'
  gem 'guard', '~> 2.18'
  gem 'guard-brakeman', '~> 0.8'
  gem 'guard-eslint', '~> 1.1', require: false
  gem 'guard-rails', '~> 0.8', require: false
  gem 'guard-rspec', '~> 4.7', require: false
  gem 'guard-rubocop', '~> 1.5'
  gem 'listen', '~> 3.7'
  gem 'rack-mini-profiler', '~> 2.3'
  gem 'rails-erd', '~> 1.6'
  gem 'rubocop', '~> 1.22'
  gem 'rubocop-performance', '~> 1.13'
  gem 'rubocop-rails', '~> 2.12'
  gem 'rubocop-rake', '~> 0.6'
  gem 'rubocop-rspec', '~> 2.6'
  gem 'rubocop-thread_safety', '~> 0.4'
  gem 'spring', '~> 4.0'
  gem 'web-console', '~> 4.2'
end

gem 'vite_rails', '~> 3.0'
