# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teambition_api/version'

Gem::Specification.new do |spec|
  spec.name          = "teambition_api"
  spec.version       = TeambitionApi::VERSION
  spec.authors       = ["402399938"]
  spec.email         = ["402399938@qq.com"]
  spec.summary       = "TeambitionAPI"
  spec.description   = "封装TeambitionAPI"
  spec.homepage      = "https://github.com/wangrui438/teambition_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", '~> 3.3'
  spec.add_development_dependency 'guard', '~> 2.13'
  spec.add_development_dependency 'guard-rspec', '~> 4.6'
end
