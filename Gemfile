source 'https://rubygems.org'

gem 'capistrano', '~> 2.15'
gem 'jbuilder',   '~> 1.2'
gem 'jquery-rails'
gem 'kaminari'
gem 'paperclip',  '~> 3.0'
gem 'rails',      '~> 4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'sqlite3'
gem 'turbolinks'
gem 'uglifier',   '>= 1.3.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'thin'
end

group :production do
  gem 'mysql2' # If using mysql in development, this can be outside the production group.
  gem 'therubyracer'
end
