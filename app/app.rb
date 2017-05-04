ENV['RACK_ENV'] = 'development'

require 'sinatra/base'
require_relative 'data_mapper_setup'

class Bookmark < Sinatra::Base
enable :sessions

  get '/links' do
    @links = Link.all
    @email = session[:email]
    erb(:'links/index')
  end

  get '/links/new' do
    erb (:'links/new')
  end

  get '/tags/:name' do
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/index'
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
    params[:tags].split.each do |tag|
      link.tags << Tag.first_or_create(name: tag)
    end
    link.save
    redirect to('/links')
  end

  get '/signup' do
    erb :'user_signup/signup'
  end

  post '/' do
    user = User.create(email: params[:email], password: params[:password])
    session[:email] = user.email
    session[:password] = user.password
    redirect to('/links')
  end

end
