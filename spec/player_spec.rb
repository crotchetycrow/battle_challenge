require 'player'

describe Player do
let(:test_player) { Player.new("Ridiculous Blip") }
  it 'returns players names' do

    expect(test_player.name).to eq "Ridiculous Blip"
  end

  # you're supposed to write some tests!!!! sheesh!
end
