class Api::LoanEntryResource < JSONAPI::Resource
  attributes :id, :preferred_return_date, :date_rented, :movie_id, :user_id

  relationship :movie, to: :one
end
