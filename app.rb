require 'bundler'
Bundler.require

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/birthday' do
    erb :celebration
  end

  get '/countdown' do
    'hello world'
    # erb :countdown
  end

end