require 'sinatra'
#require 'sinatra/reloader'
require_relative 'caesarC'

get "/" do
  if params['key'].to_i == 0
    tmp  = "Please enter valid key number!"
  else
    tmp = caesar_cipher( params["word"], params['key'].to_i)
  end
  erb :index, :locals => { :msg => tmp}
end
