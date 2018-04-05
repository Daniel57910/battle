feature 'Home Page' do
  scenario "home page displays welcome" do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entered Names' do
  scenario 'users enter their name on form' do
    visit('/begin')
    fill_in(:player1, with: 'Daniel')
    fill_in(:player2, with: 'Rob')
    #finds the button value and clicks it
    click_button('Submit')
    expect(page).to have_content 'Welcome Daniel and Rob to Battle!'
  end

  feature 'Get Score' do
    scenario 'user is able to review the other players score' do
      visit('/score')
      expect(page).to have_content 'score is 100'
    end
  end

end