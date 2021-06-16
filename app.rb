require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :production, :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Ready for battle!'
  end

  run! if app_file == $0
end