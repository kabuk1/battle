feature 'Entering names' do
  scenario 'submits and displays names' do
    visit '/'
    fill_in 'player_1', with: 'Beavis'
    fill_in 'player_2', with: 'Butthead'
    click_button 'Submit'
    expect(page).to have_content 'Beavis vs Butthead'
  end
end

