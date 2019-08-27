class FriendshipsController < ApplicationController

  def destroy
    # current_user.friendships.where(friend_id: params[:id]) it returns array? Maybe, that's why I wrote first
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    flash[:notice] = "Friend was successfully removed"
    redirect_to my_friends_path
  end

end

