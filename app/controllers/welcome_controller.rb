class WelcomeController < ApplicationController
  def welcome
   @list_theatres = Theatre.all
  end
end
