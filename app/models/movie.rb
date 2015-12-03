class Movie < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :loan_entries

  enum movie_type: [ :dvd, :blueray ]

  validates :name,        presence: true
  validates :category_id, presence: true
  validates :movie_type,  presence: true

  delegate :name,  to: :category, prefix: :category

  def rented?
    active_loan_entry.present?
  end

  def active_loan_entry
    loan_entries.first
  end
end
