# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'attack player 2' do
    scenario 'get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Hisham attacked Sayem'
     end
end