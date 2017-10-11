# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
#
# Quiz.create(
#   id: 1,
#   name: "The Quiz About Stuff",
#   theme: "Misc."
# )
#
# Quiz.create(
#   id: 2,
#   name: "Football Quiz",
#   theme: "Sports"
# )
#
# Quiz.create(
#   id: 3,
#   name: "Are You A Movie Buff?"
#   theme: "Movies"
# )
# #Quiz.create(
#  id: 1,
#  name: "The Quiz About Stuff",
#  theme: "Misc."
# )
#
# Quiz.create(
#  id: 2,
#  name: "Football Quiz",
#  theme: "Sports"
# )
#
# Quiz.create(
#  id: 3,
#  name: "Are You A Movie Buff?"
#  theme: "Movies"
# )

# User.create!(username:  "Example User",
#              email: "example@joepardy.org",
#              password:              "foobar",
#              password_confirmation: "foobar")

User.create!(username: "Admin User",
              email: "admin@joepardy.com",
              password: "sekret",
              password_confirmation: "sekret",
              admin: true)
end
