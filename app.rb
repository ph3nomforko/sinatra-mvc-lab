require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        text_from_user = params[:user_phrase]
        @analyzed_text = PigLatinizer.new
        @pig_latin  = @analyzed_text.piglatinize(text_from_user)
        erb :piglatinize
    end
end