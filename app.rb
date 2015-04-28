require('sinatra')
require('sinatra/reloader')
also_reload('/lib/**/*.rb')
require('./lib/passport')

get('/') do
  @all_places=Passport.all_places()
  erb(:index)
end

post('/customs') do
  places = params.fetch("place")
  passport = Passport.new(places)
  passport.add_place()
  erb(:customs)
end

post('/customs') do
  word_to_remove = params.fetch("remove")
  passport = Passport.new(word_to_remove)
  passport.remove(word_to_remove)
end

post('/resetpassport') do
  answer = params.fetch("reset")#some button click confirmation for reset
  if answer == "yes"
    Passport.clear()
  else
  end
  erb(:resetpassport)
end
