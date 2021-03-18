def sign_in_and_play
  visit('/')

  fill_in "player1", with: "Ridiculous Blip"
  fill_in "player2", with: "Pretty Creeper"

  click_button "Submit"
end
