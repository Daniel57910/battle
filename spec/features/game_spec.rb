require 'game'

describe 'Game' do

  let (:player1) { double(:player, :name => "Rob", :score => 100)}
  let (:player2) { double(:player, :name => "Tom", :score => 100)}

  let (:game) {Game.new(player1, player2)}

  describe "#attack" do
    it "calls the score of the 2nd player when attacked" do
      allow(game).to receive(:attack).and_return(player2.score)
    end
  end

end