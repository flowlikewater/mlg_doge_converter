require('sinatra')
require('sinatra/reloader')
require('./lib/leetspeak')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/points') do
  @word = params.fetch('word')
  @points = params.fetch('word').dogeify().leetspeak()
  erb(:points)
end
