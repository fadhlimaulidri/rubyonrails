# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {username: 'fadhlimaulidri', first_name: 'Fadhli', last_name: 'Maulidri', provider: 'github'}
])

Trip.create([
    {origin: 'Padang', destination: 'Bukittinggi', dep_time: '2019-09-10 00:00:00.000000000 +0000', transport_id: 1, fare: 30000},
    {origin: 'Pekanbaru', destination: 'Bukittinggi', dep_time: '2019-09-10 00:00:00.000000000 +0000', transport_id: 1, fare: 50000},
    {origin: 'Payakumbuh', destination: 'Bukittinggi', dep_time: '2019-09-10 00:00:00.000000000 +0000', transport_id: 1, fare: 20000}
])

ToggleFeature.create([
  {feature_name: 'comming soon', state: true}
])
