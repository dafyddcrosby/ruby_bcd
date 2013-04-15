Gem::Specification.new do |gem|
  gem.name = 'bcd'
  gem.version = '0.2'
  gem.summary       = %q{Binary Coded Decimal library}
  gem.description   = %q{A library for decoding and encoding binary coded decimal}
  gem.author = 'Dafydd Crosby'
  gem.email = 'dafydd@dafyddcrosby.com'
  gem.homepage = 'https://github.com/dafyddcrosby/ruby_bcd'
  gem.required_ruby_version = '>= 1.9'
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license = 'bsd' # (two-clause) BSD license
end
