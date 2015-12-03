class LoanEntry < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  validates :movie_id, :user_id, presence: true

  delegate :name,  to: :movie, prefix: :movie
  delegate :email, to: :user, prefix: :renter
end
