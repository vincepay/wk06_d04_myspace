# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  id: 2,
  name: 'Test',
  email: 'test@test.com',
  password: 'password'
)

User.create(
  id: 3,
  name: 'T',
  email: 't@t.com',
  password: 'password'
)

100.times do 
  Post.create(
    user_id: User.all.sample.id,
    body: Faker::Community.quotes,
    likes: rand(0..200),
    dislikes: rand(0..100)
  )
end