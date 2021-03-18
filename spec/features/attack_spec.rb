require 'spec_helper'

feature 'view attack confirmation' do
  scenario 'player 1 sees a confirmation of attacking player 2' do
    sign_in_and_play

    visit '/play'

    click_button 'attack'

    expect(page).to have_content "Ridiculous Blip has attacked Pretty Creeper"
  end
end

feature 'reducing a players HP' do
  scenario 'player 2s HP reduces by 10 when attacked by player 1' do
    sign_in_and_play

    visit '/play'

    click_button 'attack'
    click_button 'ok'

    expect(page).not_to have_content 'Pretty Creeper has 60 hitpoints'
    expect(page).to have_content 'Pretty Creeper has 50 hitpoints'
  end
end
