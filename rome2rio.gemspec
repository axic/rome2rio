# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name = "rome2rio"
  gem.version = "0.2.0"
  gem.authors = ["Alex Beregszaszi"]
  gem.email = ["alex@rtfs.hu"]
  gem.description = "A Ruby wrapper for the Rome2rio API. See http://www.rome2rio.com/documentation/search for the official documentation."
  gem.summary = "A Ruby wrapper for the Rome2rio API."
  gem.homepage = "http://github.com/axic/rome2rio"
  gem.license = "MIT"

  gem.add_dependency 'faraday'
  gem.add_dependency 'multi_json'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
end
