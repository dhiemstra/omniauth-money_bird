require 'bundler/setup'
require 'rspec'
Dir[File.expand_path('../support/**/*', __FILE__)].each { |f| require f }

RSpec.configure do |config|
end

require 'omniauth-money_bird'
OmniAuth.config.test_mode = true
