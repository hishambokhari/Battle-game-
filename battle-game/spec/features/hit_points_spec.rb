# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'view hit points' do
    scenario 'see p[layer 2 hit points' do
        visit('/')
        fill_in :player_1_name, with: 'Hisham'
        fill_in :player_2_name, with: 'Sayem'
        click_button 'Submit'
        expect(page).to have_content 'Sayem: 60HP'
    end
end