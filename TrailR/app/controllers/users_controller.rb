class UsersController < ApplicationController

    def my_movies 
        @my_movies = User.find(params[:id]).movies 
        render json: @my_movies
    end 

    def my_friends_movies
        @answer = User.find(params[:id]).friends.map do |friend|
                        {friend.username => friend.movies}
                  end 
        render json: @answer 
    end 
end
