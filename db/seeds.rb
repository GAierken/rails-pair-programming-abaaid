# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Aid.destroy_all

u1=User.create(name: "Leila", age: 3)
u2=User.create(name: "Lena", age: 3)

a1=Aid.create(name: "hungry", content:"Please give me food.", user: u1)
a2=Aid.create(name: "cold", content:"Please give me jacket.", user: u1)
a3=Aid.create(name: "painting", content:"Please give me crayons.", user: u2)
a4=Aid.create(name: "potty", content:"Please take me to potty.", user: u2)

