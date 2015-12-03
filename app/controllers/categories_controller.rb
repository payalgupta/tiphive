class CategoriesController < ApplicationController
  respond_to :html, :json
  before_action :authenticate_user!

  def index
    @categories = Category.includes(:movies).all

    respond_with @categories
  end
end
