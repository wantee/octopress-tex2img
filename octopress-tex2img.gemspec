# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-tex2img/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-tex2img"
  spec.version       = OctopressTex2img::VERSION
  spec.authors       = ["Wang Jian"]
  spec.email         = ["wantee.wang@gmail.com"]

  spec.summary       = %q{Generate image from tex source file and insert into markdown.}
  spec.description   = %q{Generate image from tex source file and insert into markdown.}
  spec.homepage      = "https://github.com/wantee/octopress-tex2img"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").grep(%r{^(bin/|lib/|assets/|changelog|readme|license)}i)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "clash"
  
  spec.add_runtime_dependency "octopress-ink", "~> 1.1"
  spec.add_runtime_dependency "octopress-image-tag", "~> 1.1.0"
end
