require './lib/game.rb'

RSpec.describe Game do
  let(:giacomo) { double :player }
  let(:subject) { described_class.new }

  it 'Paolo #attack Giacomo' do
    expect(giacomo).to receive(:infliction)
    subject.attack(giacomo)
  end
end 