require 'spec_helper.rb'

def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Beavis'
  fill_in 'player_2', with: 'Butthead'
  click_button 'Submit'
end