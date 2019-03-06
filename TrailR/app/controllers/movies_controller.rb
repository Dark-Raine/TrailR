class MoviesController < ApplicationController

    def create
        @movie = Movie.create(movie_id:params[movie_id])

        render json: @movie 

    end 

end
