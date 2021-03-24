RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'it just another random example' do
    expect(3 - 2).to eql(1)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'does some more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtration as well' do
      expect(5 - 3).to eq(2)
    end
  end
end
