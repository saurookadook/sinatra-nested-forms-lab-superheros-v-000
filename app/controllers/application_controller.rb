require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"../views/super_hero"
    end

    post '/' do
      @created_team = Team.new(params[:team])

      params[:team][:members].each do |details|
        Hero.new(details)
      end

      @heroes = Hero.all

      erb :"../views/team"
    end

end
