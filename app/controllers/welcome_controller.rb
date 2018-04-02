class WelcomeController < ApplicationController
  def welcome
   @list_theatres = Theatre.all
   if params[:keywords]
     query = Theatre.all
     @theatre = query[0].search_titre(params[:keywords])
     p "uuuu"
     p @theatre
   end
  end
end
