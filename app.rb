require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        #create this view!
        pig = PigLatinizer.new
        @pig_phrase = pig.piglatinize(params[:user_phrase])
        erb :piglatinize
    end

end