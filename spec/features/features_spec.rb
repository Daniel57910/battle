require_relative 'web_helper'

feature 'Home Page' do
  scenario "home page displays welcome" do
    visit_homepage
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entered Names' do
  scenario 'users enter their name on form' do
    score = 100
    begin_game
    sign_in
    play
    expect(page).to have_content 'Welcome Daniel and Rob to Battle!'
    expect(page).to have_content "Rob score is #{score}"
  end
end