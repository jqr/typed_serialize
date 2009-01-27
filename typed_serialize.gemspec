# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{typed_serialize}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Elijah Miller"]
  s.date = %q{2009-01-26}
  s.description = %q{Typed serialize makes sure your serialized attribute is always the specified type.}
  s.email = %q{elijah.miller@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/typed_serialize.rb", "LICENSE", "README.rdoc"]
  s.files = ["CHANGELOG", "init.rb", "install.rb", "lib/typed_serialize.rb", "LICENSE", "Manifest", "Rakefile", "README.rdoc", "typed_serialize.gemspec", "uninstall.rb"]
  s.has_rdoc = true
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Typed_serialize", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{typed_serialize}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Typed serialize makes sure your serialized attribute is always the specified type.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
