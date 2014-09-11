source 'https://rubygems.org'

gem 'rails'
gem 'pg'
gem 'bootstrap-sass'
gem 'sprockets'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'simple_form'
gem 'bcrypt'
gem 'textacular', '~> 3.0'
gem 'devise'
gem 'pry'
gem 'kaminari'
gem 'gmail'
gem 'rest_client'

group :development do
  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'launchy'
  gem 'better_errors'
  gem 'binding_of_caller'
end

# add launchy if doing integration testing w/letter_opener!
group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'#, "~> 4.0"
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'vcr'
  gem 'webmock'
end

group :development, :test do
  gem 'dotenv-rails'
end


group :production do
  gem 'rails_12factor'
end
