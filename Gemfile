source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

#Ruby with Mongo
gem 'mongoid', git: 'https://github.com/mongodb/mongoid.git'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use Puma as the app server
gem 'puma'
# Use mongo as DB
#gem 'mongo_mapper'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
