require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/super_hero' do
      @superheroes = erb :super_hero.all
    end


end
