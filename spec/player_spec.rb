require 'player'

RSpec.describe Player do 
 let(:giacomo) { described_class.new("Giacomo")}
 let(:paolo) { described_class.new("Paolo")}

  it 'returns player name' do 
    expect(giacomo.name).to eq("Giacomo")
  end 

  it 'returns giacomo\'s the initial score of 100' do
    expect(giacomo.score).to eq(100)
  end

  it 'Paolo #attack Giacomo' do
    expect(giacomo).to receive(:infliction)
    paolo.attack(giacomo)
  end

  it 'take two off points' do
    expect { giacomo.infliction }.to change { giacomo.score }.by(-10)
  end
end