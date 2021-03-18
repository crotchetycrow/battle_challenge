require 'spec_helper'

feature 'Entering names' do
  scenario "users enters name" do
    visit('/')

    fill_in "player1", with: "Ridiculous Blip"
    fill_in "player2", with: "Pretty Creeper"

    click_button "Submit"

    expect(page).to have_content 'Do you want to play a game, Ridiculous Blip and Pretty Creeper?'
  end
end

feature 'Viewing hitpoints' do
  scenario 'allow player 1 to view player 2 hitpoints' do
    visit('/')

    fill_in "player1", with: "Ridiculous Blip"
    fill_in "player2", with: "Pretty Creeper"

    click_button "Submit"

    visit '/play'

    expect(page).to have_content 'Pretty Creeper has 10 hitpoints'
  end
end
