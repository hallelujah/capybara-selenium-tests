require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  Process::exit e.status_code
end

require 'test/unit'
require 'capybara/dsl'

Capybara.default_driver = :selenium

class Test::Unit::TestCase
  include Capybara::DSL
end
