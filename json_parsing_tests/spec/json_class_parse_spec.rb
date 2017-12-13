require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it "Should be a hash" do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it "Should check the currency base" do
    expect(@exchange_rates.get_base_value).to eq "EUR"
  end

  it "Should have keys type of String" do
    expect(@exchange_rates.get_rates_keys.first).to be_kind_of(String)
  end

  it "Should check it the values are type of Float" do
    expect(@exchange_rates.get_rates_values.first).to be_kind_of(Float)
  end

  it "Length of rates should be 31" do
    expect(@exchange_rates.get_rates.length).to eql(31)
  end

  it "Should check the date is in date format" do
    expect(@exchange_rates.get_date).to be_kind_of(String)
  end

end
