require 'bundler'
Bundler.require
require './lib/personal.rb'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  $person = Person.new(params[:name])
  redirect to('/birthday')
end

  get '/birthday' do
    @name = $person.name
    erb :celebration
  end

  get '/countdown' do
    erb :countdown
  end

end
