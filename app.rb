require_relative 'config/environment'
require_relative './models/piglatinizer.rb'
require "pry"

class App < Sinatra::Base



  get "/" do
    erb :user_input
  end


  post "/piglatinize"do
    # binding.pry
    user_input = params[:user_phrase]

    @pig_latinizer = PigLatinizer.new
    @pig_latinized_text = @pig_latinizer.piglatinize(user_input)


    erb :piglatinize
  end

end
