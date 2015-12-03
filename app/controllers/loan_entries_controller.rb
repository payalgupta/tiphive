class LoanEntriesController < ApplicationController
  respond_to :html, :json
  before_action :authenticate_user!  

  def show
    @movie = current_user.movies.find params[:movie_id]
    @loan_entry = @movie.loan_entries.find params[:id]
  end

  def new
    @movie = current_user.movies.find params[:movie_id]
    @loan_entry = @movie.loan_entries.new
  end

  def create
    @movie = current_user.movies.find params[:movie_id]
    @loan_entry = @movie.loan_entries.create(loan_entry_params)

    respond_with @movie, @loan_entry
  end

  private

    def loan_entry_params
      params.require(:loan_entry).permit(:user_id, :preferred_return_date, :rented_date)
    end
end
