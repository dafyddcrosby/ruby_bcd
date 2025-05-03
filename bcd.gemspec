# frozen_string_literal: true

Gem::Specification.new do |gem|
  gem.name = "bcd"
  gem.version = "1.0.6"
  gem.summary       = "Binary Coded Decimal library"
  gem.description   = "A library for decoding and encoding binary coded decimal"
  gem.author = "David Crosby"
  gem.email = "dafydd@dafyddcrosby.com"
  gem.homepage = "https://github.com/dafyddcrosby/ruby_bcd"
  gem.required_ruby_version = ">= 3.0"
  gem.files         = File.read("Manifest.txt").split
  gem.require_paths = ["lib"]
  gem.license = "BSD-2-Clause"
  gem.metadata["rubygems_mfa_required"] = "true"
end
