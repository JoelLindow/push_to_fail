# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Stringbean", email: "test1@test.com", password: "test")
User.create(name: "NoodleArms", email: "test2@test.com", password: "test")
User.create(name: "BigBigBubba", email: "test3@test.com", password: "test")

5.times do
#user1
Failure.create(kind: "Pushups", count: rand(1..5), user_id: 1)
Failure.create(kind: "Situps", count: rand(1..5), user_id: 1)
Failure.create(kind: "Jumping Jacks", count: rand(1..5), user_id: 1)
Failure.create(kind: "Squats", count: rand(1..5), user_id: 1)

#user2
Failure.create(kind: "Pushups", count: rand(1..5), user_id: 2)
Failure.create(kind: "Situps", count: rand(1..5), user_id: 2)
Failure.create(kind: "Jumping Jacks", count: rand(1..5), user_id: 2)
Failure.create(kind: "Squats", count: rand(1..5), user_id: 2)

#user2
Failure.create(kind: "Pushups", count: rand(1..5), user_id: 3)
Failure.create(kind: "Situps", count: rand(1..5), user_id: 3)
Failure.create(kind: "Jumping Jacks", count: rand(1..5), user_id: 3)
Failure.create(kind: "Squats", count: rand(1..5), user_id: 3)
end
