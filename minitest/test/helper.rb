require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  Process::exit e.status_code
end

require 'minitest/autorun'
require 'capybara/dsl'

Capybara.default_driver = :selenium

class MiniTest::Unit::TestCase
  include Capybara::DSL

  def teardown
    Capybara.reset_session!
    Capybara.use_default_driver
  end
end
