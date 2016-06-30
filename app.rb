require('sinatra')
require('sinatra/reloader')
require('./lib/change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @result = params.fetch("cents").to_i.change()
  erb(:change)
end
