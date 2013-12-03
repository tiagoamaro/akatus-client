require "rspec"
require "akatus"
require "factory_girl"
require "vcr"
require "webmock"
require "pry"

Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each { |f| require f }

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
end

RSpec.configure do |config|
  config.color = true
  config.mock_with :rspec
  config.include FactoryGirl::Syntax::Methods

  config.before(:each) do
    Akatus.env = "test"
    Akatus.config_file = File.join(File.dirname(__FILE__), "support/config/akatus.yml")
  end

  config.order = "random"
end
