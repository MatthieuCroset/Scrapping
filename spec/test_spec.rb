require_relative '../lib/test'

describe "cryptoprices" do
  it "extract prices" do
    expect("BTC").to eq($57,619.71)
  end