require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change path', {:type => :feature}) do
  it('') do
    visit('/')
    fill_in()
    click_button("")
    expect(page).to have_content('')
  end
end
