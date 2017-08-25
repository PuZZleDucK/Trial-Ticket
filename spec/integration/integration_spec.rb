require 'rails_helper'


RSpec.describe "Integration", type: :request do

  it "Fetching main endpoint returns correct data" do
     # fetch main endpoint
     # verify is equal to Product.all.to_json
     expect(true).to eq true #todo
  end

  it "Query endpoint returns correct data" do
     # fetch with a restricted query
     # verify is equal to Product.find().to_json
     expect(true).to eq true #todo
  end

  it "Query store product returns correct data" do
     # fetch with a store product query
     # verify is equal to Product.find().to_json
     expect(true).to eq true #todo
  end

end
