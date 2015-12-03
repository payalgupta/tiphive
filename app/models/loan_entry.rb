class LoanEntry < ActiveRecord::Base
  include CanBeSampled

  belongs_to :movie
  belongs_to :user

  validates :movie_id, :user_id, :preferred_return_date, :date_rented, presence: true

  delegate :name,  to: :movie, prefix: :movie
  delegate :email, to: :user, prefix: :renter 
end
