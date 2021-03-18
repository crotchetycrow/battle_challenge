require 'spec_helper'

feature 'Entering names' do
  scenario "users enters name" do
    visit('/')

    fill_in "player1", with: "Flora"
    fill_in "player2", with: "Jack"

    click_button "Submit"

    expect(page).to have_content 'Do you want to play a game, Flora and Jack?'
  end
end
