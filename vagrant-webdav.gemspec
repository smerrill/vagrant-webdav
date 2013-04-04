# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-webdav/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-webdav"
  spec.version       = VagrantWebdav::VERSION
  spec.authors       = ["Steven Merrill"]
  spec.email         = ["steven.merrill@gmail.com"]
  spec.description   = %q{Mount WebDAV shares from your Vagrant box.}
  spec.summary       = %q{Helpers for using WebDAV from a Vagrant VM.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-core", "~> 2.12.2"
  spec.add_development_dependency "rspec-expectations", "~> 2.12.1"
  spec.add_development_dependency "rspec-mocks", "~> 2.12.1"
end
