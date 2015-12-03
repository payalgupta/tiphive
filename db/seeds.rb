# create users
User.create!(email: 'john@gmail.com', password: '12345678', password_confirmation: '12345678')
User.create!(email: 'rick@gmail.com', password: '12345678', password_confirmation: '12345678')
User.create!(email: 'samy@gmail.com', password: '12345678', password_confirmation: '12345678')

# create categories
["Fiction", "New Releases", "Comedy", "Romantic", "Sci-Fi"].each do |name| 
  Category.create_sample({name: name}) 
end

# create movies
(rand(20..40)).times do |i|
  Movie.create_sample(
    name: "Movie-#{i}",
    'category-id': Category.all.sample.id,
    'user-id': User.all.sample.id,
    'movie-type': [:dvd, :blueray].sample
  )
end

# loan movies
(rand(10..25)).times do |i|
  LoanEntry.create_sample(
    'movie-id': Movie.all.sample.id, # here we would need a scope 'available' to check that movie is not already rented out
    'user-id': User.all.sample.id,
    'preferred-return-date': rand(1..5).days.from_now,
    # we could have renamed below to rented-on as its datetime, also it should be automatically generated in a callback
    'date-rented': Time.now 
  )
end

