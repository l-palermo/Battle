require 'player'

RSpec.describe Player do 
 let(:subject) { described_class.new("name")}
  it 'returns player name' do 
    expect(subject.name).to eq("name")
  end 
end