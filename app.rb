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
    session[:enter_num] = params[:enter_num]
    # $numeral = RomanNumeral.new(params[:enter_num])
    redirect '/result'
  end

  get '/result' do
    @numeral = session[:enter_num]
    # @numeral = $numeral.entered_num
    erb(:result)
  end

  run! if app_file == $0
end
