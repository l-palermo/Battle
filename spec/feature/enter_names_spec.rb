require './lib/app.rb'

RSpec.feature 'Testing infrastructure', :type => :feature do

  # scenario 'Can run app and check page content' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'Player insert names' do 
    sign_in_and_play

    expect(page).to have_text("BATTLE\nPlayer1 vs Player2")
  end 
end