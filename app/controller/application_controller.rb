class ApplicationController < Sinatra::Base

    get '/' do
        "Hello World"
    end

    get '/movies' do
        Movie.all.to_json
    end

    get '/movies/:id' do
        Movie.find(params[:id]).to_json
    end

    get '/tickets' do
        Ticket.all.to_json
    end

    get '/tickets/:id' do
        Ticket.find(params[:id]).to_json
    end
end