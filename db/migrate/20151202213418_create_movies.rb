class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :movie_type, default: 0
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
