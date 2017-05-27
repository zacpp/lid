# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "lid/version"

Gem::Specification.new do |spec|
  spec.name        = "lid"
  spec.version     = Lid::VERSION
  spec.authors     = ["Kendall Gifford"]
  spec.email       = ["kendall@zacpp.com"]
  spec.homepage    = "https://github.com/zacpp/lid"
  spec.license     = "MIT"
  spec.summary     = "Keeps a lid on sensitive files by encrypting them"
  spec.description = <<-EOF
    Lid is a simple utility used to encrypt and decrypt files. Use at your
    own risk.
  EOF

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",  "~> 1.15"
  spec.add_development_dependency "rake",     "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_runtime_dependency     "rbnacl",   "~> 4.0"
  spec.add_runtime_dependency     "oj",       "~> 3.0"
end
