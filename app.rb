require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piggy_style = PigLatinizer.new
    @piggy_phraze = @piggy_style.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
