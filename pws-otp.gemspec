# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/pws/otp/version"

Gem::Specification.new do |gem|
  gem.name          = "pws-otp"
  gem.version       = PWS::Otp::VERSION
  gem.summary       = "OTP support for PWS"
  gem.description   = "Experimental OTP support for PWS"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["mail@janlelis.de"]
  gem.homepage      = "https://github.com/janlelis/pws-otp"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "pws", "~> 1.0"
  gem.add_dependency "rotp", "~> 3.3"
  gem.add_dependency "rationalist", "~> 2.0"

  gem.required_ruby_version = "~> 2.1"
end
