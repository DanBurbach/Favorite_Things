require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Favorite-Things', {:type => :feature}) do
  it('Takes a name and rank from the user, and adds it to an ordered list') do
    visit('/')
    fill_in('name', :with => 'burrito')
    fill_in('rank', :with => '2')
    click_button('Go!')
    fill_in('name', :with => 'pizza')
    fill_in('rank', :with => '1')
    click_button('Go!')
    expect(page).to have_content("1 pizza 2 burrito")
  end
end
