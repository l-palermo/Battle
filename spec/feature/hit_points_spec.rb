require './lib/app.rb'

RSpec.feature 'Testing infrastructure', :type => :feature do
  
  scenario 'player 2\'s hits points' do
    sign_in_and_play
    
    expect(page).to have_text("Player2: score 100/100")
  end

  scenario 'player1 attack player 2' do
    sign_in_and_play

    click_button 'attack'

    expect(page).to have_text("Player2: score 90/100")
  end
end 