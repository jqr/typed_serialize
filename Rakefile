require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

task :default => :spec

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.rspec_opts = %w[--color --backtrace]
end
