require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end 

    get '/new' do
        erb :create_puppy
    end 

    post '/puppy' do
        # binding.pry
        @puppy = Puppy.new(params[:name],params[:breed],params[:months_old])
        redirect :puppy
    end

    get '/puppy' do
        erb :display_puppy
    end
end
