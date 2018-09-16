# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Failure.create(kind: "Pushup", count: 1)
Failure.create(kind: "Pushup", count: 2)
Failure.create(kind: "Pushup", count: 3)

Failure.create(kind: "Situp", count: 1)
Failure.create(kind: "Situp", count: 2)
Failure.create(kind: "Situp", count: 3)

Failure.create(kind: "Jumping", count: 1)
Failure.create(kind: "Jumping", count: 2)
Failure.create(kind: "Jumping", count: 3)

Failure.create(kind: "Squat", count: 1)
Failure.create(kind: "Squat", count: 2)
Failure.create(kind: "Squat", count: 3)
