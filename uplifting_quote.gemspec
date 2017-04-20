# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "uplifting_quote/version"

Gem::Specification.new do |spec|
  spec.name          = "uplifting_quote"
  spec.version       = UpliftingQuote::VERSION
  spec.authors       = ["Steven Hawkins"]
  spec.email         = ["steven.hawkins84@gmail.com"]

  spec.summary       = %q{Provides an uplifing quote of the day.}
  spec.description   = %q{Uses a free REST API to give you an uplifing quote.}
  spec.homepage      = "https://github.com/steve-hawkins/uplifting_quote"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
