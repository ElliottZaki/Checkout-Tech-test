require './lib/checkout'

describe Checkout do
  it { is_expected.to respond_to :scan }
  
  describe '.scan' do
    it 'the scanned_products array should start empty' do
      expect(subject.scanned_products).to be_empty 
    end

    it 'is expected to scan product' do
      product = Product.new(001, 'Lavender_heart', 9.25)
      subject.scan(product)
      expect(subject.scanned_products).to eq([product])
    end
  end
end

