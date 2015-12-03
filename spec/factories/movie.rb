# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    name 'Inception'
    association :category, factory: :category
    movie_type :dvd
  end
end
