require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path for passport application', {:type=> :feature}) do
  it("allows user to input locations they've been to") do
    visit('/')
    fill_in('place', :with=> 'Portland')
    click_button('Add Location')
    expect(page).to have_content('Great you did it!')
  end
end
