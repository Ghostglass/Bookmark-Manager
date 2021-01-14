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

##One good sign that this is a sensible refactor is that the feature test for ##viewing bookmarks and the unit test for Bookmark are very similar. When you ##think about it, they're doing similar things: presenting Bookmark data to two ##different interfaces (feature test presents to the browser interface, unit ##test presents to the controller interface). This sort of simple similarity ##across the two interfaces feels 'right'.

##Summary##

#• We wrote a failing test.
#• We solved the failing test with some easy code (an array in the controller).
#• We refactored to an MVC pattern, implementing a view and a model called # 
#• Bookmark, including writing a unit test for Bookmark.
#• We used a RESTful route.

#We'll basically be repeating these steps throughout the project. 
##The big takeaway here is: move in a small steps, write code that works, and ##refactor each time. The two biggest mistakes we see are when devs try to ##refactor too early (i.e. "I know what this design should look like, why ##should I write the easy stuff first?") and when devs fail to refactor at ##all (i.e. "I'll refactor #this later when I have some more to work with."). ##Avoid both premature #refactoring and refactoring later: both lead to ruin.}