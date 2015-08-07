require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('input').word_count(params.fetch('key'))
  erb(:result)
end
