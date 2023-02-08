require 'rails_helper'
require 'swagger_helper'

describe 'Creates Product' do
  let(:valid_params) do
    {
      product:
      {
        title: 'Create a HTML Page',
        short_description: 'This should be responsive',
        price: 200
      }
    }
  end

  context 'With valid params' do
    it 'creates a Product ' do
      # binding.pry
      post api_v1_products_path, params: valid_params
      # binding.pry
      expect(Product.count).to eq(1)
      # binding.pry
      # expect(Product.list.count).to eq(1)
      expect(status).to eq(204)
    end
  end
end
