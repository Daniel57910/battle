def visit_homepage
  visit('/')
end

def begin_game
  visit('/begin')
end

def play_game
  visit('/play')
end

def sign_in
  fill_in(:player1, with: 'Daniel')
  fill_in(:player2, with: 'Rob')
  click_button('Submit')
end

def attack
  click_link('Attack')
end

#helper method for starting game
def start_game
  begin_game
  sign_in
end