require 'rails_helper'

RSpec.describe Product, type: :model do

      it "Products can be created" do
         product = Product.new({ title: "item one", price: 111});
         expect(product.title).to eq "item one"
         expect(product.price).to eq 111
      end

end
