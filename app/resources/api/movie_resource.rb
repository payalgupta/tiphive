class Api::MovieResource < JSONAPI::Resource
  attributes :id, :name, :category_id, :movie_type, :user_id, :renter_email

  has_many :loan_entries
end
