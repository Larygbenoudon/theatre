source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.2'

gem 'rails', '~> 5.1.4'

gem 'bootstrap', '~> 4.0.0.beta'

gem 'pg', '~> 0.21.0'

gem 'pg_search'

gem 'pundit'

gem 'puma', '~> 3.0'

gem 'font-awesome-sass'

gem 'sass-rails'

gem 'popper_js', '~> 1.12.9'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'carrierwave', '~> 1.0'

gem 'devise'

gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'sidekiq'

group :development, :test do
  gem 'foreman'
end

group :development do
  gem 'web-console', '>= 3.3.0'

  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'heroku-deflater'

  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
