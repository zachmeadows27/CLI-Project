# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'get_gfx/version'

Gem::Specification.new do |spec|
  spec.name          = "get_gfx"
  spec.version       = GetGfx::VERSION
  spec.authors       = ["zachmeadows"]
  spec.email         = ["zlmeadow@syr.edu"]

  spec.summary       = "Summary"
  spec.description   = "Description"
  spec.homepage      = "https://github.com/zachmeadows27/CLI-Project"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


end
