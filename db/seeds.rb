# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Property.destroy_all

User.create!(first_name:"Theau", last_name:"Bruno", email:"theau@example.com", password:"password")
User.create!(first_name:"Vincent", last_name:"Grenier", email:"vincent@example.com", password:"password")
User.create!(first_name:"Louis", last_name:"Loison", email:"louis@example.com", password:"password")
User.create!(first_name:"Dennis", last_name:"Kouassi", email:"dennis@example.com", password:"password")


p1 = Property.new( name:"Kuda Funafaru",
  address:"Kuda Funafaru",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"1000€",
  category:"Island",
  user_id: User.first.id)
p1.remote_photo_url = "https://images.unsplash.com/photo-1506790409786-287062b21cfe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1490&q=80"
p1.save!

p2 =Property.new( name:"Baa Atoll",
  address:"Baa Atoll",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"2000€",
  category:"Island",
  user_id: User.first.id)
p2.remote_photo_url = "https://images.unsplash.com/photo-1527401850656-0f34108fdb30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1170&q=80"
p2.save!

p3 = Property.new( name:"Ko Samui",
  address:"Ko Samui",
  country:"Thailand",
  description:"Ile paradisiaque",
  price:"1000€",
  category:"Island",
  user_id: User.second.id)
p3.remote_photo_url = "https://images.unsplash.com/photo-1530948990335-1eb93cbe6430?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
p3.save!

p4 = Property.new( name:"Koh tao",
  address:"koh tao",
  country:"Thailand",
  description:"Ile paradisiaque",
  price:"1000€",
  category:"Island",
  user_id: User.second.id)
p4.remote_photo_url = "https://images.unsplash.com/photo-1537956965359-7573183d1f57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=968&q=80"
p4.save!


p5 = Property.new( name:"Kudahuvadhoo",
  address:"Kudahuvadhoo",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"800€",
  category:"Island",
  user_id: User.last.id)
p5.remote_photo_url = "https://images.unsplash.com/photo-1537162998323-3d3675e0e87c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1490&q=80"
p5.save!

p5 = Property.new( name:"Gangehi",
  address:"Gangehi",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"800€",
  category:"Island",
  user_id: User.last.id)
p5.remote_photo_url = "https://images.unsplash.com/photo-1467377791767-c929b5dc9a23?ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80"
p5.save!

p6 = Property.new( name:"Shoukapa",
  address:"Shoukapa",
  country:"Malaysie",
  description:"Ile paradisiaque",
  price:"900€",
  category:"Island",
  user_id: User.last.id)
p6.remote_photo_url = "https://images.unsplash.com/photo-1540202404-1b927e27fa8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1490&q=80"
p6.save!

p7 = Property.new( name:"Fuvahmulah",
  address:"fuvahmulah",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"1100€",
  category:"Island",
  user_id: User.first.id)
p7.remote_photo_url = "https://images.unsplash.com/photo-1545556124-500dc7c01f2c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80"
p7.save!

p8 = Property.new( name:"Balicasag Island",
  address:"Balicasag island",
  country:"Philippines",
  description:"Ile paradisiaque",
  price:"1100€",
  category:"Island",
  user_id: User.third.id)
p8.remote_photo_url = "https://images.unsplash.com/photo-1504519638490-0f2a2c1591fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1014&q=80"
p8.save!

p9 = Property.new( name:"Maafushivaru",
  address:"Maafushivaru",
  country:"Maldives",
  description:"Ile paradisiaque",
  price:"1400€",
  category:"Island",
  user_id: User.third.id)
p9.remote_photo_url = "https://images.unsplash.com/photo-1505881502353-a1986add3762?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1562&q=80"
p9.save!




