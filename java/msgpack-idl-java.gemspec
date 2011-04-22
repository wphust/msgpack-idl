# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{msgpack-idl-java}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FURUHASHI Sadayuki"]
  s.date = %q{2011-04-23}
  s.email = %q{frsyuki@users.sourceforge.jp}
  s.files = [
    "AUTHORS",
     "README",
     "lib/msgpack/idl/lang/java.rb",
     "lib/msgpack/idl/lang/java/client/application.java",
     "lib/msgpack/idl/lang/java/client/service_version.java",
     "lib/msgpack/idl/lang/java/enum.java",
     "lib/msgpack/idl/lang/java/message.java",
     "lib/msgpack/idl/lang/java/message_body.java",
     "lib/msgpack/idl/lang/java/server/application.java",
     "lib/msgpack/idl/lang/java/server/service_version.java",
     "lib/msgpack/idl/lang/java/service_version.java",
     "lib/msgpack/idl/lang/java/version.rb"
  ]
  s.homepage = %q{http://msgpack.org/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{msgpack}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{MessagePack IDL Processor Language Module for Java}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<msgpack-idl>, [">= 0.1.0"])
      s.add_runtime_dependency(%q<tenjin>, [">= 0.6.1"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<msgpack-idl>, [">= 0.1.0"])
      s.add_dependency(%q<tenjin>, [">= 0.6.1"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<msgpack-idl>, [">= 0.1.0"])
    s.add_dependency(%q<tenjin>, [">= 0.6.1"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

