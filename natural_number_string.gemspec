# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'natural_number_string/version'

Gem::Specification.new do |spec|
  spec.name          = 'natural_number_string'
  spec.version       = NaturalNumberString::VERSION
  spec.authors       = ['sanemat']
  spec.email         = ['o.gata.ken@gmail.com']

  spec.summary       =
    'Check the string is a natural number.'
  spec.description   =
    'Check the string is a natural number.'
  spec.homepage      =
    'https://github.com/packsaddle/ruby-natural_number_string'
  spec.license       = 'MIT'

  spec.files         =
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   =
    spec
      .files
      .grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'test-unit'
end
