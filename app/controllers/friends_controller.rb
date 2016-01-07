class FriendsController < ApplicationController
  def index
  	@user = User.find(current_user.id)
    @friends_of_from_user = User.find(current_user.id).friends_of_from_user.uniq
    @friends_of_to_user = User.find(current_user.id).friends_of_to_user.uniq

  end

  def search
  	@users = User.where( 'user_name' => "#{params[:search]}" ).uniq if params[:search].present?	
  end
end
