# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.create(
#   {username: 'fadhlimaulidri', name: 'Fadhli Maulidri', provider: 'github'}
# )
#
# Trip.create([
#     {user_id: 1, dep: 'Padang', arr: 'Bukittinggi', dep_time: '2019-09-10 00:00:00.000000000 +0000', user_transport_id: 1, fare: 30000},
#     {user_id: 1, dep: 'Pekanbaru', arr: 'Bukittinggi', dep_time: '2019-09-10 00:00:00.000000000 +0000', user_transport_id: 1, fare: 50000},
#     {user_id: 1, dep: 'Payakumbuh', arr: 'Bukittinggi', dep_time: '2019-09-10 00:00:00.000000000 +0000', user_transport_id: 1, fare: 20000}
# ])

ToggleFeature.create([
  {feature_name: 'comming soon', state: true}
])
