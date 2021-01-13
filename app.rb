# in app.rb - we've built a controller- and it already has a '/' route.
# in app.rb

require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
    
    get '/' do
        'Bookmark Manager'
    end
    
    get '/bookmarks' do 
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
    end

    run! if app_file == $0
end