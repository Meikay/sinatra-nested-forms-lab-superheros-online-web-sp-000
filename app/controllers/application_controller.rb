require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/super_hero' do
      @superheroes = Superheroes.all
      
      erb :'super_hero/index'
    end


end
