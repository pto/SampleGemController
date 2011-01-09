# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "my_gem/version"

Gem::Specification.new do |s|
  s.name        = "my_gem"
  s.version     = MyGem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Peter Olsen"
  s.email       = "pto@me.com"
  s.homepage    = ""
  s.summary     = "A test gem"
  s.description = "Checking to see how to build gems and test them"

#  s.rubyforge_project = "my_gem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
