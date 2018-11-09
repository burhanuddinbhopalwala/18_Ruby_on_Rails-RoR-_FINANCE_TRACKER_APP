class FriendshipsController < ApplicationController 
    def destroy
        @friendship = current_user.friendships.where(friend_id: params[:id]).first()
        @friendship.destroy()
        # NEVER DO THIS BELOW AS DESTORYING USER AND NOT THE FRIENDSHIP
        # friend = current_user.friends.where(id: params[:id]).first()
        # friend.destroy()
        flash[:notice] = "Friend was successfully removed"
        redirect_to(my_friends_path())
    end 
end 