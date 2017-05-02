require 'sinatra/base'
require_relative './models/link'

class Bookmark < Sinatra::Base

  get '/links' do
    @link = Link.all
    erb(:'links/index')
  end

  get '/links/new' do
    erb (:'links/new')
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links/'
  end

end
