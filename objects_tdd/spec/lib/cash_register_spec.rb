require './lib/cash_register'

describe CashRegister do
  it 'should be a Cash Register' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should return 0.00 for initial total' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#purchase(price)' do
    it 'should add the price to the total' do
      subject.purchase(10.00)
      expect(subject.total).to eq(10.00)
    end
  end

  describe '#pay(amount_paid)' do
    it 'should subtract the amount paid from the total' do
      subject.purchase(10)
      subject.pay(10)
      expect(subject.total).to eq(0)
    end

    it 'should give the amount of change' do
      subject.purchase(5.00)
      subject.pay(10.00)
      expect(subject.total).to eq(5.00)
    end

    it 'should give the new total if not paid in full' do
      subject.purchase(10)
      subject.pay(5)
      expect(subject.total).to eq(5)
    end
  end
end
