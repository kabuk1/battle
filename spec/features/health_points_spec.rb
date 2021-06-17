feature 'View health point' do
  scenario 'see health points for player 2' do
    sign_in_and_play
    expect(page).to have_content 'Butthead: 60HP'
  end
end