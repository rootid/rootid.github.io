# frozen_string_literal: true

source "https://rubygems.org"

gem 'jekyll-theme-chirpy', '~> 7.1', '>= 7.1.1'

group :test do
  gem "html-proofer", "~> 3.18"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

