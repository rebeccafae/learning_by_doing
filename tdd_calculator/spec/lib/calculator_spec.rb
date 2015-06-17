require './lib/calculator'

describe Calculator do
  it 'should be a Caluclator' do
    expect(subject).to be_a(Calculator)
  end

  describe '#total' do
    it 'return 0.00 for new calculators' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#add(number)' do
    it 'can add positive numbers' do
      subject.add(5)
      expect(subject.total).to eq(5)
    end

    it 'can add negative numbers' do
      subject.add(-5)
      expect(subject.total).to eq(-5)
    end
  end

  describe '#subtract(number)' do
    it 'can subtract positive numbers' do
      subject.subtract(5)
      expect(subject.total).to eq(-5)
    end

    it 'can subtract negative numbers' do
      subject.subtract(-5)
      expect(subject.total).to eq(5)
    end
  end

  describe '#multiply(number)' do
    it 'can multiply when the total is 0' do
      subject.multiply(5)
      expect(subject.total).to eq(0)
    end

    it 'can multiply when the total is 1' do
      subject.add(1)
      subject.multiply(5)
      expect(subject.total).to eq(5)
    end

    it 'can multiply when the total is any other number' do
      subject.add(7)
      subject.multiply(5)
      expect(subject.total).to eq(35)
    end
  end

  describe '#divide(number)'do
    it 'can divide when the total is not 0' do
      subject.add(10)
      subject.divide(2)
      expect(subject.total).to eq(5)
    end

    # for the following two tests to pass, I changed total to 0 instead of 0.0
    it 'cannot divide a number by 0' do
      subject.add(1)
      expect { subject.divide(0) }.to raise_error(ZeroDivisionError)
    end

    it 'cannot divide 0 by 0' do
      expect { subject.divide(0) }.to raise_error(ZeroDivisionError)
    end
  end
end
