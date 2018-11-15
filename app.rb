require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'
require_relative './lib/front.rb'
require_relative './lib/roman_numeral.rb'

class Converter < Sinatra::Base

  enable :sessions
  set :sessions_secret, 'My session secret'

  get '/' do
    erb(:index)
  end

  post '/enter_number' do
    @enter_num = session[:enter_num]
    redirect '/reuslt'
  end

  get '/result' do
    @enter_num
    erb(:result)
  end


  run! if app_file == $0
end
