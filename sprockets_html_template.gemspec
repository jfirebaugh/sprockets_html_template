# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["John Firebaugh"]
  gem.email         = ["john.firebaugh@gmail.com"]
  gem.description   = %q{Adds Sprockets support for static templates with the extension .jst.html}
  gem.summary       = %q{Adds Sprockets support for static templates with the extension .jst.html}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sprockets_html_template"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"

  gem.add_dependency "sprockets"
  gem.add_dependency "tilt"
end
