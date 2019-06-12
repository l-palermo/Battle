require './lib/app.rb'

RSpec.feature 'Testing infrastructure', :type => :feature do

  # scenario 'Can run app and check page content' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'Player insert names' do 
    visit('/')

    fill_in 'player1', :with => "Player1"
    fill_in "player2", :with => "Player2"
    click_button "Submit"

    expect(page).to have_text("Player1\nVS\nPlayer2")
  end 
end