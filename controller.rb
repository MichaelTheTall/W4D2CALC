require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative('./models/calculator')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/add/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.add()
  erb(:result)
  # return "#{params[:num1]} + #{params[:num2]} = #{@calculation}"
end

get '/subtract/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.subtract()
  # return "#{params[:num1]} - #{params[:num2]} = #{@calculation}"
  erb(:result)
end

get '/multiply/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.multiply()
  # return "#{params[:num1]} - #{params[:num2]} = #{@calculation}"
  erb(:result)
end

get '/divide/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.divide()
  # return "#{params[:num1]} - #{params[:num2]} = #{@calculation}"
  erb(:result)
end
