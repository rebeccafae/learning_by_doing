require './lib/coffee_maker'

describe CoffeeMaker do
  it 'should be a coffee maker' do
    expect(subject).to be_a(CoffeeMaker)
  end

  describe '#add_water(amount)' do
    it 'should let you add water' do
      expect(subject.add_water(5)).to eq(5)
    end
  end

  describe '#add_filter' do
    it 'should let you add a filter' do
      expect(subject.add_filter).to be(true)
    end
  end

  describe '#add_coffee_grounds(amount)' do
    it 'should let you add coffee grounds' do
      expect(subject.add_coffee_grounds(5)).to eq(5)
    end
  end

  describe '#ready?' do
    it 'should tell you if the coffee maker is ready' do
      subject.add_filter
      subject.add_water(5)
      subject.add_coffee_grounds(5)
      expect(subject.ready?).to be(true)
    end
    it 'should tell you if the coffee maker is not ready' do
      expect(subject.ready?).to be(false)
    end
  end

  describe '#brew' do
    it 'should brew coffee when it has all the ingredients' do
      subject.add_filter
      subject.add_water(5)
      subject.add_coffee_grounds(5)
      expect(subject.brew).to be(true)
    end
    it 'should not brew coffee if it does not have all the ingredients' do
      expect(subject.brew).to be(false)
    end
  end
end
