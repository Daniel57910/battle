require_relative 'web_helper'

$player1 = Player.new("Rob")
$player2 = Player.new("Tom")
$score = 100

feature 'Home Page' do
  scenario "home page displays welcome" do
    visit_homepage
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entered Names' do
  scenario 'users enter their name on form' do
    start_game
    expect(page).to have_content 'Welcome Daniel and Rob to Battle!'
    expect(page).to have_content "Rob score is #{$score}"
  end
end

feature 'Attack the other player' do
  scenario 'player one attacks player two' do
      start_game
      play_game
      attack
      $score -=10
      expect(page).to have_content "Rob was successfully attacked. Score is #{$score}"
  end
end