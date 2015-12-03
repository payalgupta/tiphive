class MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = current_user.movies.order('name')
  end

  def new
    @movie = current_user.movies.new
  end

  def show
    @movie = current_user.movies.find params[:id]
  end

  def create
    @movie = Movie.create(movie_params)
  end

  private

    def movie_params
      params.permit(:name, :category_id, :movie_type, :user_id)
    end
end
