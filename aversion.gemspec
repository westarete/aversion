# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aversion/version'

Gem::Specification.new do |gem|
  gem.name          = "aversion"
  gem.version       = Aversion::VERSION
  gem.authors       = ["Scott Woods"]
  gem.email         = ["scott@westarete.com"]
  gem.description   = %q{Manage the version number for your application}
  gem.summary       = %q{Manage the version number for your application}
  gem.homepage      = "http://github.com/westarete/aversion"

  gem.add_development_dependency "rspec"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec|features)/})
  gem.require_paths = ["lib"]
end
