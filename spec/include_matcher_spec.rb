RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('ola')
      expect(subject).to include('ocol')
    end

    it { is_expected.to include('hot') }
  end

  describe [10, 20, 30] do
    it 'checks for include in the array, regardless of order' do
      expect(subject).to include(20, 10)
      expect(subject).to include(30)
    end
    it { is_expected.to include(30, 20, 10) }
  end

  describe ({ a: 2, b: 4 }) do
    it 'can check for key existence' do
      expect(subject).to include(a: 2)
      expect(subject).to include(:a)
      expect(subject).to include(:b)
    end

    it { is_expected.to include(:a) }

    it 'can check for key-value pair' do
      expect(subject).to include(b: 4)
    end

    it { is_expected.to include(a: 2, b: 4) }
  end
end
