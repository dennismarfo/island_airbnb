# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(first_name:"Theau", last_name:"Bruno", email:"theau@example.com", password:"password")
User.create!(first_name:"Vincent", last_name:"Grenier", email:"vincent@example.com", password:"password")
User.create!(first_name:"Louis", last_name:"Loison", email:"louis@example.com", password:"password")
User.create!(first_name:"Dennis", last_name:"Kouassi", email:"dennis@example.com", password:"password")


Property.create!( name:"Kuda Funafaru",
  adress:"Kuda Funafaru",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"1000€",
  photo_url:"https://images.unsplash.com/photo-1506790409786-287062b21cfe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1490&q=80",
  user_id: User.first.id)

Property.create!( name:"Baa Atoll",
  adress:"Baa Atoll",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"2000€",
  photo_url:"https://images.unsplash.com/photo-1527401850656-0f34108fdb30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1170&q=80",
  user_id: User.first.id)

Property.create!( name:"Ko Samui",
  adress:"Ko Samui",
  country:"Thailand",
  description:"Ile paradisiaque",
  price:"1000€",
  photo_url:"https://images.unsplash.com/photo-1530948990335-1eb93cbe6430?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  user_id: User.first.id)

Property.create!( name:"koh tao",
  adress:"koh tao",
  country:"Thailand",
  description:"Ile paradisiaque",
  price:"1000€",
  photo_url:"https://images.unsplash.com/photo-1537956965359-7573183d1f57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=968&q=80",
  user_id: User.first.id)
