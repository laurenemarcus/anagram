require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')

get('/anagram') do
  erb(:anagram)
end

get('/anagram_result') do
  @anagram_entered = params.fetch('anagram_entered')
  array_to_input = @anagram_entered.split(" ")
  @result = array_to_input.anagram()
  erb(:anagram_result)
end
