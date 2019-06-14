require './lib/game.rb'

RSpec.describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:subject) { described_class.new(player1, player2) }

  it 'Paolo #attack Giacomo' do
    expect(player1).to receive(:infliction)
    subject.attack(player1)
  end
end 