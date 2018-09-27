# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Johnny User", email: "test@test.com", password: "test")

Failure.create(kind: "Pushups", count: 1, user_id: 1)
Failure.create(kind: "Pushups", count: 2, user_id: 1)
Failure.create(kind: "Pushups", count: 3, user_id: 1)

Failure.create(kind: "Situps", count: 1, user_id: 1)
Failure.create(kind: "Situps", count: 2, user_id: 1)
Failure.create(kind: "Situps", count: 3, user_id: 1)

Failure.create(kind: "Jumping Jacks", count: 1, user_id: 1)
Failure.create(kind: "Jumping Jacks", count: 2, user_id: 1)
Failure.create(kind: "Jumping Jacks", count: 3, user_id: 1)

Failure.create(kind: "Squats", count: 1, user_id: 1)
Failure.create(kind: "Squats", count: 2, user_id: 1)
Failure.create(kind: "Squats", count: 3, user_id: 1)
