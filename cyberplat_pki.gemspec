# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "cyberplat_pki_patched"
  gem.version       = "1.0.1"
  gem.authors       = ["Evgeniy Burdaev"]
  gem.email         = ["inqify@gmail.com"]
  gem.description   = %q{CyberplatPKI is an FFI binding for signing Cyberplat requests. Patched fork.}
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/whitequark/cyberplat_pki"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  if RUBY_PLATFORM =~ /linux/
    gem.extensions    = ["ext/mock_the_clock/extconf.rb"]
  end

  gem.add_dependency             "ffi"
  gem.add_development_dependency "rspec"
end
