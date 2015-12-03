class CreateLoanEntries < ActiveRecord::Migration
  def change
    create_table :loan_entries do |t|
      t.integer :movie_id
      t.integer :user_id
      t.datetime :date_rented
      t.datetime :preferred_return_date
      t.boolean  :is_returned, default: :false

      t.timestamps null: false
    end
  end
end
