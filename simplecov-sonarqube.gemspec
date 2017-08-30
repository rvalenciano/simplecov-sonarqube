# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'simplecov-sonarqube'

Gem::Specification.new do |spec|
  spec.name          = 'simplecov-sonarqube'
  spec.version       = SimpleCov::Formatter::SonarqubeFormatter::VERSION
  spec.authors       = ['Randall Valenciano Fallas']
  spec.email         = ['ravf.226@gmail.com']
  spec.summary       = 'SimpleCov Sonarqube Formatter'
  spec.description   = 'Produces Cobertura XML formatted output from SimpleCov'
  spec.homepage      = 'https://github.com/rvalenciano/simplecov-sonarqube'
  spec.license       = 'Apache-2.0'
  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'ci_reporter_test_unit', '~> 1.0'
  spec.add_development_dependency 'nokogiri', '~> 1.6'

  spec.add_dependency 'simplecov', '~> 0.8'
  spec.add_dependency 'json', '~> 1.8'
end