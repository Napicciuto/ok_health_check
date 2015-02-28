# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ok_health_check/version'

Gem::Specification.new do |spec|
  spec.name          = "ok_health_check"
  spec.version       = OkHealthCheck::VERSION
  spec.authors       = ["Nick Picciuto"]
  spec.email         = ["nick@spartansystems.co"]
  spec.summary       = %q{Site health check}
  spec.description   = %q{A simple gem to check the health of a site}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rails"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
