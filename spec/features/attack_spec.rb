feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Beavis attacked Butthead'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    # expect(page).not_to have_content 'Butthead: 60HP'
    expect(page).to have_content 'Butthead: 50HP'
  end
end