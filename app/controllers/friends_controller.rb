class FriendsController < ApplicationController
  def index
  	@user = User.find(current_user.id)
    @friends_of_from_user = User.find(current_user.id).friends_of_from_user
    @friends_of_to_user = User.find(current_user.id).friends_of_to_user;
  end

  def search
  end
end
