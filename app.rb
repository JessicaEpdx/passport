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

post('/resetpassport') do
  answer = params.fetch("reset")#some button click confirmation for reset
  if answer == "yes"
    Passport.clear()
  else
  end
  erb(:resetpassport)
end
