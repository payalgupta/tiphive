class MoviesController < ApplicationController
  respond_to :html, :json
  before_action :authenticate_user!

  def index
    @movies = current_user.movies.order('name')

    respond_with @movies
  end

  def new
    @movie = current_user.movies.new
  end

  def show
    @movie = current_user.movies.find params[:id]
  end

  def create
    @movie = current_user.movies.create(movie_params)

    respond_with @movie
  end

  private

    def movie_params
      params.require(:movie).permit(:name, :category_id, :movie_type)
    end
end
