# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creating Users
user1 = User.new({
  email: "user1@example.com",
  password: "123456",
  password_confirmation: "123456"
  })

  user1.save()

  user2 = User.new({
    email: "user2@example.com",
    password: "123456",
    password_confirmation: "123456"
    })

    user1.save()

## Someone Questions

2.times do
  question1 = user1.question.new({
    title: FFaker::Lorem.phrase,
    description: FFaker::Lorem.paragraph,
    }).save

    question2 = user2.question.new({
      title: FFaker::Lorem.phrase,
      description: FFaker::Lorem.paragraph,
      }).save

end
