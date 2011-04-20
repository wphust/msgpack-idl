# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{msgpack-idl}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FURUHASHI Sadayuki"]
  s.date = %q{2011-04-20}
  s.email = %q{frsyuki@users.sourceforge.jp}
  s.files = [
    "AUTHORS",
     "ChangeLog",
     "README",
     "lib/msgpack/idl/ast.rb",
     "lib/msgpack/idl/command/idl.rb",
     "lib/msgpack/idl/command/install.rb",
     "lib/msgpack/idl/error.rb",
     "lib/msgpack/idl/evaluator.rb",
     "lib/msgpack/idl/generator.rb",
     "lib/msgpack/idl/ir.rb",
     "lib/msgpack/idl/module.rb",
     "lib/msgpack/idl/parser.rb",
     "lib/msgpack/idl/parser/rule.rb",
     "lib/msgpack/idl/parser/transform.rb",
     "lib/msgpack/idl/version.rb"
  ]
  s.homepage = %q{http://msgpack.org/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{msgpack}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{MessagePack IDL Processor}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

