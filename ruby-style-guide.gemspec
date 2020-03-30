lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'voxable/ruby_style_guide/version'

Gem::Specification.new do |spec|
  spec.name          = 'voxable-style-guide'
  spec.version       = Voxable::RubyStyleGuide::VERSION
  spec.authors       = ['Matt Buck']
  spec.email         = ['matt@voxable.io']

  spec.summary       = "Voxable's Ruby style guide."
  spec.description   = "Voxable's Ruby style guide and RuboCop config."
  spec.homepage      = 'https://github.com/voxable-labs/voxable-style-guide'
  spec.license       = 'MIT'


  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '~> 13.0.1'
end
