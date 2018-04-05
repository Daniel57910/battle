feature 'Home Page' do
  scenario "home page displays welcome" do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entered Names' do
  scenario 'users enter their name on form' do
    visit('/begin')
    fill_in('name1', with: 'Daniel')
    fill_in('name2', with: 'Rob')
    #finds the button id and clicks it
    click_button('submit')
    expect(page).to have_content 'Welcome Daniel and Rob'
  end
end