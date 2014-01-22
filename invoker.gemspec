# -*- encoding: utf-8 -*-

GEM_NAME = "invoker"

lib = File.expand_path("../lib", __FILE__)
$: << lib unless $:.include?(lib)

require "invoker/version"

Gem::Specification.new do |s|
  s.name = GEM_NAME
  s.version = Invoker::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hemant Kumar", "Amitava Basak"]
  s.description = %q{Something small for process management}
  s.email = %q{hemant@codemancers.com}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.homepage = %q{http://invoker.codemancers.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.summary = %q{Something small for Process management}
  s.add_dependency("slop", "~> 3.4.6")
  s.add_dependency("iniparse", "~> 1.1.6")
  s.add_dependency("formatador", "~> 0.2.4")
  s.add_dependency("eventmachine", "~> 1.0.3")
  s.add_dependency("em-proxy", "~> 0.1.8")
  s.add_dependency("rubydns", "~> 0.7.0")
  s.add_dependency("uuid", "~> 2.3.7")
  s.add_dependency("highline", "~> 1.6.19")
  s.add_dependency("http-parser-lite", "~> 0.6.0")
  s.add_dependency("dotenv", "~> 0.9.0")
  s.add_development_dependency("rspec")
  s.add_development_dependency("mocha")
  s.add_development_dependency("rake")
end
