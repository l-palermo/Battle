require './lib/app.rb'

RSpec.feature 'Testing infrastructure', :type => :feature do
  
  scenario 'player1 attack player2' do
    sign_in_and_play

    click_button "Attack"

    expect(page).to have_text('Player1 attacked Player2')
  end

  scenario 'click ok message disapear' do 
    sign_in_and_play

    click_button "Attack"
    click_button 'OK'
    expect(page).not_to have_text('Player1 attacked Player2')
  end

  scenario 'player2 attacke player1' do
    sign_in_and_play

    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    expect(page).to have_text('Player2 attacked Player1')
  end
end 