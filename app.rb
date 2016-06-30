require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram_search') do
  @user_array = params.fetch("user_array")
  @user_word = params.fetch("user_word")
  @result = @user_word.anagram_search(@user_array)
  erb(:anagram)
end
