# Test Card
# Has a Rank
# Has a Susit

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe 'Card' do
  it 'has a rank' do
    card = Card.new('Ace', 'Spaces')
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    card = Card.new('Ace', 'Spaces')
    expect(card.suit).to eq('Spaces')
  end
end
