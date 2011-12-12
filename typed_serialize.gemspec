# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{typed_serialize}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Elijah Miller"]
  s.date = %q{2010-10-19}
  s.description = %q{Typed serialize makes sure your serialized attribute is always the specified type.}
  s.email = %q{elijah.miller@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/typed_serialize.rb", "LICENSE", "README.rdoc"]
  s.files = ["CHANGELOG", "init.rb", "install.rb", "lib/typed_serialize.rb", "LICENSE", "Manifest", "Rakefile", "README.rdoc", "typed_serialize.gemspec", "uninstall.rb"]
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Typed_serialize", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{typed_serialize}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Typed serialize makes sure your serialized attribute is always the specified type.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end

  s.add_dependency 'activerecord'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'rspec'
  if RUBY_VERSION =~/1.8.x/
    s.add_development_dependency 'ruby-debug'
  elsif RUBY_VERSION =~/1.9.x/
    s.add_development_dependency 'ruby-debug19'
  end
end
