require 'sinatra'
require "sinatra/reloader"
require_relative 'db/database.rb'

set :views, Proc.new { File.join(root, "app/views") }


get '/' do
    @db = DB
    erb :home
end

get '/card/:id' do
     @id = params[:id]
     @db = DB
     @comments =  COMMENTS
     erb :article
    

end