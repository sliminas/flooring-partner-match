# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

gem "rails", "~> 6.1.0"

gem "sqlite3", "~> 1.4"

gem "jbuilder", "~> 2.7"
gem "sass-rails", ">= 6"
gem "slim"
gem "turbolinks", "~> 5"

gem "bootsnap", ">= 1.4.4", require: false
gem "puma", "~> 5.0"

group :development, :test do
  gem "faker"
  gem "pry-byebug"
end

group :development do
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"

  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "rubocop-thread_safety"
end
