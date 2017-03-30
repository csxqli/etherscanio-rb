require 'spec_helper'

describe Etherscanio::Api do
  describe 'account_balance' do
    subject { Etherscanio::Api.new(apikey).account_balance(address, tag) }

    context 'one address' do
      subject { Etherscanio::Api.new(apikey).account_balance(address, tag) }
      let(:apikey) { 'YourApiKeyToken' }
      let(:address) { '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae' }
      let(:tag) { 'latest' }
      it { is_expected.to be_a(Object) }
    end

    context 'multiple address' do
      subject { Etherscanio::Api.new(apikey).account_balance(address, tag) }
      let(:apikey) { 'YourApiKeyToken' }
      let(:address) do
        %w(
          0xddbd2b932c763ba5b1b7ae3b362eac3e8d40121a
          0x63a9975ba31b0b9626b34300f7f627147df1f526
          0x198ef1ec325a96cc354c7266a038be8b5c558f67
        )
      end
      let(:tag) { 'latest' }
      it { is_expected.to be_a(Object) }
    end

  end
end
