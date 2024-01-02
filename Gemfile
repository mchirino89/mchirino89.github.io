source "https://rubygems.org"

group :development, :test do
  gem "rspec"
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "rexml"
  gem "rack-jekyll"
  gem "rack", ">= 2.1.4"
  gem "pry"
  gem "webrick"
  gem "kramdown", ">= 2.3.1"
  gem "addressable", ">= 2.8.0"
  gem "nokogiri", ">= 1.12.5"
end

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
# gem "jekyll", "~> 3.8.7"

# This is the default theme for new Jekyll sites. You may change this to anything you like.
gem 'jekyll-theme-modernist'
gem 'jemoji'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.6"
  gem 'github-pages', '~> 228'
  gem "activesupport", ">= 6.1.7.5"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo"
  gem "tzinfo-data"
end
