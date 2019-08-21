require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/super_hero' do
      @team_members = Superheroes.all

      erb :'super_hero/index'
    end


end
