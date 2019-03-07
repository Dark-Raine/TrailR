class FriendshipsController < ApplicationController
    def create
        @mates = Friendship.create(user_id:params[:user_id], friend_id:params[:friend_id])
        @mates_again = Friendship.create(user_id:params[:friend_id], friend_id:params[:user_id])
        render json: @mates_again
    end

    def show
        @friends = User.find(params[:id]).friends 
        render json: @friends
        # can change the above line to return movies of friends later 
    end 




    
   
end
