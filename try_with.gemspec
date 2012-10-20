# -*- encoding: utf-8 -*-
require File.expand_path('../lib/try_with/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jonathan Lozinski"]
  gem.email         = ["jonathan.lozinski@sage.com"]
  gem.description   = %q{An extensible contigency handler}
  gem.summary       = %q{Write more robust handling around method calls}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "try_with"
  gem.require_paths = ["lib"]
  gem.version       = TryWith::VERSION

  gem.add_development_dependency 'guard-rspec'
end
