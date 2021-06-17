feature 'Entering names' do
  scenario 'submits and displays names' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content 'Beavis vs Butthead'
  end
end

