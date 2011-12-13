$:.push File.expand_path("../lib", __FILE__)
require "typed_serialize/version"

Gem::Specification.new do |s|
  s.name          = "typed_serialize"
  s.version       = TypedSerialize::VERSION
  s.authors       = ["Elijah Miller"]
  s.email         = %q{elijah.miller@gmail.com}
  s.summary       = %q{Typed serialize makes sure your serialized attribute is always the specified type.}
  s.require_paths = ["lib"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.add_dependency 'activerecord'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'rspec'
end
