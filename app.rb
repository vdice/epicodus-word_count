require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @input = params.fetch('input')
  @key = params.fetch('key')
  @result = @input.word_count(@key)
  erb(:result)
end
