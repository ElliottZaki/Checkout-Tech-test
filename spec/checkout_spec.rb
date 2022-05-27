require './lib/checkout'

describe Checkout do
  it { is_expected.to respond_to :scan }
  

  describe '.scan' do
    it 'the scanned_products array should start empty' do
      expect(subject.scanned_products).to be_empty 
    end

    it 'is expected to scan product' do
    end
  end
end

