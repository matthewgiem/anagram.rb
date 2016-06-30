require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('will accept a word from the user along with an array of words that might be anagrams and return the words that are anagrams') do
    visit('/')
    fill_in('user_word', :with => 'cat')
    fill_in('user_array', :with => 'act,hat,tac')
    click_button('Go')
    expect(page).to have_content(['act', 'tac'])
  end
end
