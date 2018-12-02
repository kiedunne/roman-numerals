require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'
require_relative './lib/front.rb'
require_relative './lib/roman_numeral.rb'

class Converter < Sinatra::Base

  enable :sessions
  set :sessions_secret, 'My session secret'

  get '/' do
    @enter_num = session[:enter_num]
    erb(:index)
  end

  post '/enter_number' do
    session[:enter_num] = params[:enter_num]
    @numeral = RomanNumeral.create
    @numeral.calculate(params[:enter_num])
    redirect '/result'
  end

  before do
    @roman_numeral = RomanNumeral.instance
  end
  
  get '/result' do
    @enter_num = session[:enter_num]
    # @numeral = RomanNumeral.new
    # @roman_numeral = @numeral.calculate(params[:enter_num])
    # p @roman_numeral
    erb(:result)
  end

  run! if app_file == $0
end
