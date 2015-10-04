source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
gem 'smailer'
gem 'aasm'
gem 'hirefire-resource'
gem 'aws-ses'

gem 'medium-editor-rails'
gem 'codemirror-rails'
gem 'html_to_plain_text'
gem 'smarter_csv'
gem 'staccato'
gem 'feedjira'
gem 'kaminari'
gem 'bootstrap-kaminari-views'
gem "chartkick"
gem 'groupdate'

# Monitoring
gem 'rack-timeout'
gem 'newrelic_rpm'
gem "sentry-raven"

# Data
gem 'pg'

# Assets
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'haml-rails'
gem 'simple_form'
gem 'headjs-rails'

# Javascript
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'nprogress-rails'

# CoffeeScript
gem 'coffee-rails', '~> 4.0.0'

# Design
gem 'bootstrap-sass', '3.3.5'
gem 'bootstrap-sass-extras'
gem 'font-awesome-rails'

# Email
gem 'premailer-rails'

# Authentication
gem 'devise', github: 'plataformatec/devise'
gem 'cancancan'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

# Admin
gem 'rails_admin'

# Workers
gem 'sidekiq'
gem 'sidekiq-unique-jobs'
gem 'sidekiq-throttler'
gem 'devise-async'
gem 'sinatra', require: false

# Utils
gem 'addressable'
gem 'settingslogic'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'bundler'

gem 'google-analytics-rails'
gem 'binding_of_caller'
gem 'rails_config'
gem 'delayed_job_active_record'
gem 'validates_formatting_of'
gem 'tzinfo-data'


group :development do
  gem 'better_errors'
  gem 'sdoc', '~> 0.4.0',          group: :doc
  gem 'guard-rspec'
end

group :development, :test do
  gem 'spring',        group: :development
  gem 'spring-commands-rspec'
  gem 'awesome_print'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'factory_girl_rails', :require => false
  gem 'ffaker'
  gem 'poltergeist'
  gem 'capybara-firebug'
  gem 'zeus-parallel_tests'
  gem 'quiet_assets'
end

group :test do
  gem 'minitest'
  gem 'shoulda-matchers'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'simplecov'
  gem 'rspec-sidekiq'
end

group :production do
  gem 'mysql2'
  gem 'dalli'
  gem 'memcachier'
  gem 'unicorn'
  gem 'rails_12factor'
end