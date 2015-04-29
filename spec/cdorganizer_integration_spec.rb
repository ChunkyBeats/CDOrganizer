require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the collection path', {:type=>:feature}) do
  it('allows the user to enter a CD into their collection and shows them the updated collection') do
    visit('/')
    click_on ('Add a New CD')
    fill_in('title', :with=>'Frozen')
    click_button('Add CD')
    expect(page).to have_content('Frozen')
  end
end

describe('artist collection path' {:type => feature}) do
  it('allows the user to enter an Artist into their collection') do
    visit('/')
    click_on('Add a New Artist')
    fill_in('artist_name', :with=>'Prince')
    click_button('Add Artist')
    expect(page).to have_content('Prince')
