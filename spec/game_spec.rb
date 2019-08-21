require './lib/game.rb'

RSpec.describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:subject) { described_class.new(player1, player2) }

  it 'Player1 #attack Player2' do
    expect(player2).to receive(:infliction)
    subject.attack
  end

  it 'Player2 #attack Playuer1' do
    subject.turn_switcher
    expect(player1).to receive(:infliction)
    subject.attack
  end
end 