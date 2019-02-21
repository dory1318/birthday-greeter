require 'sinatra/base'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/birthday' do
    erb :celebration
  end

  get '/countdown' do
    erb :countdown
  end

run! if app_file == $0

end
