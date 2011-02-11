# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "trove/version"

Gem::Specification.new do |s|
  s.name        = "trove"
  s.version     = Trove::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Fitzpatrick"]
  s.email       = ["kevin@kfitz.me"]
  s.homepage    = "https://github.com/kfitzpatrick/trove"
  s.summary     = %q{Ruby library for interacting with yourtrove.com's API}
  s.description = %q{Ruby library for interacting with yourtrove.com's API}

  s.rubyforge_project = "trove"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rspec')
end
