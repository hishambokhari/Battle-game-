# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'view hit points' do
    scenario 'see p[layer 2 hit points' do
        sign_in_and_play
        expect(page).to have_content 'Sayem: 60HP'
    end
end