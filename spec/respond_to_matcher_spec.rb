class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purcharse(number)
    "Awesome, I just purch #{number} more hot chocolate beverages!"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purcharse)
  end

  it 'confirms an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purcharse)
    expect(subject).to respond_to(:purcharse).with(1).arguments
  end

  it { is_expected.not_to respond_to(:srink) }
  it { is_expected.to respond_to(:purcharse).with(1).arguments }
end
