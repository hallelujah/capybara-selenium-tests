require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  Process::exit e.status_code
end

require 'minitest/autorun'
require 'capybara_minitest_spec'
require 'capybara/dsl'

Capybara.default_driver = :selenium

class IntegrationSpec < MiniTest::Spec
  include Capybara::DSL

  def teardown
    Capybara.reset_session!
    Capybara.use_default_driver
  end
end

MiniTest::Spec.register_spec_type(IntegrationSpec) do
  true
end
