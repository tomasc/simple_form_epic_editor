# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form_epic_editor/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_form_epic_editor"
  spec.version       = SimpleFormEpicEditor::VERSION
  spec.authors       = ["Tomas Celizna"]
  spec.email         = ["tomas.celizna@gmail.com"]
  spec.summary       = %q{Integrates the markdown editor EpicEditor with Rails and Simple Form.}
  spec.description   = %q{Integrates the markdown editor EpicEditor with Rails and Simple Form.}
  spec.homepage      = "https://github.com/tomasc/simple_form_epic_editor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "simple_form", ">= 3.0.2"
  spec.add_dependency "rails-assets-epiceditor", ">= 0.2.2"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
