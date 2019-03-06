class FriendshipsController < ApplicationController
    def create
        # byebug
        @mates = Friendship.create(user_id:params[:user_id], friend_id:params[:friend_id])

        @mates_again = Friendship.create(user_id:params[:friend_id], friend_id:params[:user_id])

        byebug
        
      end
    
    #   private
    
    #   def mess_params(*args)
    #     params.require(:message).permit(args)
    #   end
end
