# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Dummy Users
User.create(name: "Stringbean", email: "test1@test.com", password: "test")
User.create(name: "NoodleArms", email: "test2@test.com", password: "test")
User.create(name: "BigBigBubba", email: "test3@test.com", password: "test")

# Workout Kinds
Kind.create(name: "Pushups")
Kind.create(name: "Knee Pushups")
Kind.create(name: "Situps")
Kind.create(name: "Crunches")
Kind.create(name: "Jumping Jacks")
Kind.create(name: "Squats")

# Workout Dummy Records
# Failure.create()


5.times do
#user1 seed data
Failure.create(kind_id: 1, count: rand(1..5), user_id: 1)
Failure.create(kind_id: 2, count: rand(1..5), user_id: 1)
Failure.create(kind_id: 3, count: rand(1..5), user_id: 1)
Failure.create(kind_id: 4, count: rand(1..5), user_id: 1)
Failure.create(kind_id: 5, count: rand(1..5), user_id: 1)
Failure.create(kind_id: 6, count: rand(1..5), user_id: 1)


#user2 seed data
Failure.create(kind_id: 1, count: rand(1..5), user_id: 2)
Failure.create(kind_id: 2, count: rand(1..5), user_id: 2)
Failure.create(kind_id: 3, count: rand(1..5), user_id: 2)
Failure.create(kind_id: 4, count: rand(1..5), user_id: 2)
Failure.create(kind_id: 5, count: rand(1..5), user_id: 2)
Failure.create(kind_id: 6, count: rand(1..5), user_id: 2)


#user3 seed data
Failure.create(kind_id: 1, count: rand(1..5), user_id: 3)
Failure.create(kind_id: 2, count: rand(1..5), user_id: 3)
Failure.create(kind_id: 3, count: rand(1..5), user_id: 3)
Failure.create(kind_id: 4, count: rand(1..5), user_id: 3)
Failure.create(kind_id: 5, count: rand(1..5), user_id: 3)
Failure.create(kind_id: 6, count: rand(1..5), user_id: 3)

end
