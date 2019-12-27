# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'attack player 2' do
    scenario 'get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Hisham attacked Sayem'
     end

    #  As Player 1,
    #  So I can start to win a game of Battle,
    #  I want my attack to reduce Player 2's HP

    scenario 'reduce Player 2 HP by 10' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        expect(page).not_to have_content 'Sayem: 60HP'
        expect(page).to have_content 'Sayem: 50HP'
      end
end