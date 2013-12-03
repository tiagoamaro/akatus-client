require 'spec_helper'

describe Akatus::Transactions do
  let(:order) { build(:order) }

  describe '.process' do
    it "returns an xml with 'status' node" do
      VCR.use_cassette('akatus.process') do
        response = Akatus::Transactions.process(order, 'An Api Key', 'teobaldo@mailinator.com', 'https://sandbox.akatus.com/api/v1')
        response.should_not be_nil
        response['status'].should_not be_nil
      end
    end
  end
end