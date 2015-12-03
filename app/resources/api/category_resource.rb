class Api::CategoryResource < JSONAPI::Resource
  attributes :id, :name

  has_many :movies, order: 'name asc'
end
