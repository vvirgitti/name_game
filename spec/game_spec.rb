require 'capybara/rspec'
require 'spec_helper'

feature 'homepage' do

  scenario 'start a game' do
    visit '/'
    expect(page).to have_content("Start Game")
  end

  scenario 'when a user clicks start game, they will be taken to the game' do
    visit '/'
    click_on("Start Game")
    expect(page).not_to have_content("Start Game")
  end
end


feature 'start playing' do

  scenario 'the user sees a picture' do
    visit '/game'
    expect(page).to have_xpath("/public/images/badass.png")
  end

end
