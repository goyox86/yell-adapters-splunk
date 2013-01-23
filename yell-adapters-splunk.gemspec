# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "yell-adapters-splunk"
  gem.version       = "0.0.1"
  gem.authors       = ["Jose Narvaez"]
  gem.email         = ["goyox86@gmail.com"]
  gem.description   = %q{Splunk Yell adapter}
  gem.summary       = %q{Splunk Yell adapter}
  gem.homepage      = ""

  gem.add_runtime_dependency "yell", "~> 1.2"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]
end
