# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_error/version"

Gem::Specification.new do |spec|
  spec.name          = "active_error"
  spec.version       = ActiveError::VERSION
  spec.authors       = ["Juanito Fatas", "Huiming Teo"]
  spec.email         = ["katehuang0320@gmail.com", "teohuiming@gmail.com"]

  spec.summary       = %(Create an exception has never been easier in Ruby!)
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/JuanitoFata/active_error"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
end
