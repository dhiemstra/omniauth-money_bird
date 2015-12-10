require 'spec_helper'
require 'omniauth-money_bird'

describe OmniAuth::Strategies::MoneyBird do
  before :each do
    @request = double('Request')
    allow(@request).to receive(:params) { {} }
  end

  subject do
    OmniAuth::Strategies::MoneyBird.new(nil, @options || {}).tap do |strategy|
      allow(strategy).to receive(:request) { @request }
    end
  end

  it_should_behave_like 'an oauth2 strategy'

	describe '#client' do
    it 'has correct MoneyBird api site' do
      expect(subject.options.client_options.site).to eq('https://moneybird.com')
    end
  end

	describe '#callback_path' do
    it 'should have the correct callback path' do
      expect(subject.callback_path).to eq('/auth/money_bird/callback')
    end
  end
end
