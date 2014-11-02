# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require './lib/cloudbit_client'

Gem::Specification.new do |spec|
  spec.name          = "cloudbit_client"
  spec.version       = CloudbitClient::VERSION
  spec.authors       = ["Brian Kelly"]
  spec.email         = ["polymonic@gmail.com"]
  spec.summary       = %q{Gem for talking to littleBit's CloudBit.}
  spec.homepage      = "https://github.com/spilth/cloudbit_client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rest_client'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
end
