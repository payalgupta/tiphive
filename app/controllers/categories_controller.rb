class CategoriesController < ApplicationController
  respond_to :html, :json
  before_action :authenticate_user!

  def index
    @categories = Category.all.includes(:movies)

    respond_with @categories
  end
end
