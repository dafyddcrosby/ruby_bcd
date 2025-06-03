# frozen_string_literal: true

source "https://rubygems.org"

group :development, optional: true do
  gem "dc-devtools", "~> 0.5"
  gem "rbs-inline" if RUBY_VERSION.match?("3\.[3-9]")
  gem "steep" if RUBY_VERSION.match?("3\.[3-9]")
end
