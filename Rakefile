# frozen_string_literal: true

require "dc_rake"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "test"
end

default_tasks = %i[test rubocop]
unless RUBY_VERSION.match?("3.[0-2]")
  require "dc_typing/rake"
  default_tasks.append("steep")
end

desc "Run tests"
task default: default_tasks
