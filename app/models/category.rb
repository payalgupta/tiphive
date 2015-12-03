class Category < ActiveRecord::Base
  include CanBeSampled

  has_many :movies

  validates :name, presence: true, uniqueness: true
end
