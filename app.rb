require 'bundler'
Bundler.require
require './lib/personal.rb'
require 'date'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name-date' do
  $person = Person.new(params[:name].to_s)
  $birthday = BirthDay.new(params[:day],[:month].to_s)
  $new = $birthday.create_date
  if $new == Date.today
    redirect to('/birthday')
  else
    redirect to('/countdown')
  end
end

  get '/birthday' do
    @name = $person.name
    erb :celebration
  end

  get '/countdown' do
    erb :countdown
  end

end
