RSpec.describe Array do
  subject(:sally) do
    [2, 3 [2]]
  end

  it 'remove an element from object' do
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'sally is equal to the original array' do
    expect(sally).to eq([2, 3 [2]])
  end
end
