require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'rspec/core/rake_task'
require 'rake/testtask'

# RSpec
RSpec::Core::RakeTask.new do |t|
  t.description = "Run tests against RSpec"
  t.pattern = "./spec/**/*_spec.rb"
  t.rspec_opts = "--color"
end

Rake::TestTask.new(:minispec) do |test|
  test.description = "Run tests against MiniTest Spec syntax"
  test.libs << 'minitest/spec'
  test.options = "--verbose"
  test.test_files = FileList['minitest/spec/*_spec.rb']
  test.verbose = true
  test.warning = false
end

# Minitest
Rake::TestTask.new(:minitest) do |test|
  test.description = "Run tests against MiniTest Test::Unit syntax"
  test.libs << 'minitest/test'
  test.options = "--verbose"
  test.test_files = FileList['minitest/test/test_*.rb']
  test.verbose = true
  test.warning = false
end

# Test::Unit
desc "Test against Unit::Test"
Rake::TestTask.new(:test) do |test|
  test.description = "Run tests against Test::Unit"
  test.libs << 'test'
  test.options = "--color=always"
  test.test_files = FileList['test/test_*.rb']
  test.verbose = true
  test.warning = false
end

desc "Run tests against RSpec by default"
task :default => :spec
