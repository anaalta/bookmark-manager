require 'sinatra/base'
require_relative './models/link'

class Bookmark < Sinatra::Base

get '/links' do
  @link = Link.all
  erb(:'links/index')

end

end
