# -*- encoding: utf-8 -*-
require File.expand_path('../lib/chek/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["toooooooby"]
  gem.email         = ["toby.net.info.mail+git@gmail.com"]
  gem.description   = %q{You can gesture require or not in ruby script. ☑ or ☐.}
  gem.summary       = %q{You can gesture require or not in ruby script.}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "chek"
  gem.require_paths = ["lib"]
  gem.version       = Chek::VERSION

  gem.homepage      = "https://github.com/#{gem.authors.first}/#{gem.name}/"

  gem.add_development_dependency("rake")
  gem.add_development_dependency("rspec", '~>2.10')
  gem.add_development_dependency("coveralls")
end
