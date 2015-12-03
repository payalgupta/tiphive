require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  describe "GET #index" do
    let (:user) { create(:user) }

    it 'responds with movies for current_user' do
      category = create(:category)
      movie    = user.movies.create({name: 'Legally Blonde', movie_type: :dvd, category_id: category.id})       

      sign_in user

      get :index

      expect(assigns(:movies)).to eq [movie]
    end
  end

end
