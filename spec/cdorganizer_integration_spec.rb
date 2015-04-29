require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the collection path') do
  it('allows the user to enter a CD into their collection and shows them the updated collection') do
    visit('/')
    fill_in('title', :with=>'Frozen')
    click_button('Add CD')
    expect(page).to have_content('Frozen')
  end
end
