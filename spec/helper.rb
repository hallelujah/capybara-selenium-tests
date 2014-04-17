require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  Process::exit e.status_code
end

require 'rspec'
require 'capybara/rspec'

Capybara.default_driver = :selenium

RSpec.configure do |config|
  config.include Capybara::DSL
end
