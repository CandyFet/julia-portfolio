source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.3'
gem "pg", "~> 1.0"
gem "puma", "~> 5.0"
gem "webpacker"
gem 'decent_exposure', '~> 3.0'

gem "cable_ready"

gem "dry-effects", "~> 0.1.5"
gem "dry-initializer", "~> 3.0"

gem "slim"
gem "view_component"
gem "turbolinks", require: "turbolinks/redirection"

gem "bcrypt", "~> 3.1.7"

gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  gem "pry-byebug"
  gem "pry-rails"

  gem "rspec-rails"
end

group :development do
  gem "listen", "~> 3.2"

  gem "standard", "~> 0.8.0"
  gem "rubocop-rspec"
  gem "rubocop-rails"
end

group :test do
  gem "capybara"
  gem "cuprite"

  gem "test-prof"
end
