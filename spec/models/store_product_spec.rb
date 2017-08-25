require 'rails_helper'

RSpec.describe StoreProduct, type: :model do

      it "Store Products can be created" do
         product = StoreProduct.new({ title: "item one", price: 111});
         expect(product.title).to eq "item one"
         expect(product.price).to eq 111
      end

end
