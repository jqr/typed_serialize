# require "bundler/gem_tasks" #add standart bundler tasks for maintain gem
require 'rspec/core/rake_task'

require 'echoe'
Echoe.new 'typed_serialize' do |p|
  p.description     = "Typed serialize makes sure your serialized attribute is always the specified type."
  # p.url             = "http://typed_serialize.rubyforge.org"
  p.author          = "Elijah Miller"
  p.email           = "elijah.miller@gmail.com"
  p.retain_gemspec  = true
  p.need_tar_gz     = false
  p.extra_deps      = [
  ]
  p.ignore_pattern  = ['spec/test.sqlite3']
end

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |t|
  #t.rspec_path = 'bin/rspec'
  t.rspec_opts = %w[--color]
end

task :default => :spec