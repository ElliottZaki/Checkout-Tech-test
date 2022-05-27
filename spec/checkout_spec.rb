require './lib/checkout'

describe Checkout do
  it { is_expected.to respond_to :scan }
  it { is_expected.to respond_to :total }
  
  describe '.scan' do
    it 'the scanned_products hash should start empty' do
      expect(subject.scanned_products).to be_empty 
    end

    it 'is expected to scan product' do
      product = Product.new(001, 'Lavender_heart', 9.25)
      subject.scan(product)
      expect(subject.scanned_products[1]).to eq({:cost => 9.25, :name => 'Lavender_heart', :quantity => 1})
    end
  end

  describe '.total' do
    it 'returns the total cost for all scanned_products' do
      product = Product.new(001, 'Lavender_heart', 9.25)
      product2 = Product.new(002, 'Personalised cufflinks', 45.00)
      subject.scan(product)
      subject.scan(product2)
      subject.total
      expect(subject.total_cost).to eq(54.25)
    end
  end

  describe '.apply_discounts' do
    it 'will apply a 10% discount for scanned_products over £60' do
      product = Product.new(001, 'Lavender_heart', 9.25)
      product2 = Product.new(002, 'Personalised cufflinks', 45.00)
      product3 = Product.new(003, 'Kids T-shirt', 19.95)
      subject.scan(product)
      subject.scan(product2)
      subject.scan(product3)
      subject.total
      expect(subject.total_cost).to eq(66.78)
    end

    it 'will apply a discount on Lavender_hearts if there are two or more' do
      product = Product.new(001, 'Lavender_heart', 9.25)
      product2 = Product.new(002, 'Kids T-shirt', 19.95)
      product3 = Product.new(001, 'Lavender_heart', 9.25)
      subject.scan(product)
      subject.scan(product2)
      subject.scan(product3)
      subject.total
      expect(subject.total_cost).to eq(36.95)
    end
  end
end


