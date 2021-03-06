RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }
  it 'is a palidrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palidrome') do |value|
      value == value.reverse
    end
  end
end
