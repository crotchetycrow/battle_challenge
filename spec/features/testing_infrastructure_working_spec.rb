require 'spec_helper'

feature 'Testing infrastructure' do
  scenario "visiting TEST page" do
    visit('/TEST')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
