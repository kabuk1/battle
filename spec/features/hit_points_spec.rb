feature 'View hit point' do
  scenario 'see hit points for player 2' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content 'Butthead: 60HP'
  end
end