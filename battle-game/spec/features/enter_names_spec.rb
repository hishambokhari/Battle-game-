# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names

feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Hisham'
        fill_in :player_2_name, with: 'Sayem'
        click_button 'Submit'
        expect(page).to have_content 'Hisham vs. Sayem'
    end
end