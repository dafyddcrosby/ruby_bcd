# frozen_string_literal: true

require "dc_rake"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "test"
end

desc "Run tests"
task default: %i[test rubocop]
