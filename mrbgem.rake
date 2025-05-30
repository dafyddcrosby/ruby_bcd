MRuby::Gem::Specification.new('mruby-bcd') do |gem|
  gem.summary = "Binary Coded Decimal library"
  gem.authors = "David Crosby"
  gem.license = "BSD-2-Clause"
  gem.version = "1.0.6"

  gem.rbfiles = [
    "#{dir}/lib/bcd.rb",
  ]
end
