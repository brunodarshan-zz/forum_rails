# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Categorias
"web, desktop, sistemas, sistemas operacionais, mobile".split(", ").each do | cat |
  Category.create({name: cat})
end


# Creating Users
user1 = User.create({
  email: "user1@example.com",
  password: "123456",
  password_confirmation: "123456"
  })


  user2 = User.create({
    email: "user2@example.com",
    password: "123456",
    password_confirmation: "123456"
  })


## Someone Questions
unless user1.nil? || user2.nil?
  3.times do
    user1.question.create!({
      title: FFaker::Lorem.phrase,
      description: FFaker::Lorem.paragraph,
      category: Category.all.to_a.shuffle.first
      })

    user2.question.create!({
      title: FFaker::Lorem.phrase,
      description: FFaker::Lorem.paragraph,
      category: Category.all.to_a.shuffle.first
      })
    end
end
