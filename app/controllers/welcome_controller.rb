class WelcomeController < ApplicationController
  def welcome
    p "current"
    p current_user
  end
end
