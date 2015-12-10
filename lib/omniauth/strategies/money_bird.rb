require 'oauth2'
require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class MoneyBird < OmniAuth::Strategies::OAuth2
      option :name, "money_bird"
      option :client_options, {site: 'https://moneybird.com'}
    end
  end
end
