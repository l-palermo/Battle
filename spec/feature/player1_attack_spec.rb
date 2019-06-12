require './lib/app.rb'

RSpec.feature 'Testing infrastructure', :type => :feature do
  
  scenario 'player 2\'s hits points' do
    sign_in_and_play

    click_button "Attack"

    expect(page).to have_text('Player1 attacked Player2')
  end
end 