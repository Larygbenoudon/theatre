# frozen_string_literal: true
# User context for policies
class UserContext
  attr_reader :user

  def initialize(user)
    @user = user
  end
end
