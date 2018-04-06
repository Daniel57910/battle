require 'player'

describe 'Player' do
  let (:player) {Player.new("Daniel")}

  it "is able to return it's own name" do
    expect(player.name).to eq "Daniel"
  end

  it "reduces the score of the player by 10 when attacked" do
    expect(player.score - 10).to eq 90
  end

end