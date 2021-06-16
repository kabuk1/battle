feature 'Entering names' do
  scenario 'submits and displays names' do
    visit '/'
    fill_in 'Player 1', with: 'Bevis'
    fill_in 'Player 2', with: 'Butthead'
    click_button 'Submit'
    expect(page).to have_content 'Bevis vs Butthead'
  end
end

