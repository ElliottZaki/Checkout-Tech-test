require './lib/product'

describe Product do
  it 'contains a product_number, name and cost upon initalization' do
    product = Product.new(0o01, 'Lavender_heart', 9.25)
    expect(product.product_number).to eq(0o01)
    expect(product.name).to eq 'Lavender_heart'
    expect(product.cost).to eq 9.25
  end
end
