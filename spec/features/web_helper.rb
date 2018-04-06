def visit_homepage
  visit('/')
end

def begin_game
  visit('/begin')
end

def sign_in
  fill_in(:player1, with: 'Daniel')
  fill_in(:player2, with: 'Rob')
end

def play
  click_button('Submit')
end