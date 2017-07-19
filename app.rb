require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        @team = {}
        @team[:name] = params[:name]
        @team[:coach] = params[:coach]
        @team[:pg] = params[:pg]
        @team[:sg] = params[:sg]
        @team[:pf] = params[:pf]
        @team[:sf] = params[:sf]
        @team[:c] = params[:c]
        erb :team
    #    redirect '/team'
    end

    #get '/team' do
    #    erb :team
    #end
end
