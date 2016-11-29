# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "USERS!"
User.destroy_all

u1 = User.create :username => "fc1992", :name => 'Fernando Cris', :gender => "Male", :dob => "1991/08/09", :email => 'fc1992@email.com', :country => "Brazil", :password => "chicken", :password_confirmation => "chicken"
u2 = User.create :username => "benza", :name => 'Kristina Benz', :gender => "Female", :dob => "1989/01/15", :email => 'kristina@email.com', :country => "France", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :username => "joseph", :name => 'Joseph Smith', :gender => "Male", :dob => "1981/05/20", :email => 'josephs@email.com', :country => "United Kingdom", :password => "chicken", :password_confirmation => "chicken"
u4 = User.create :username => "miss-faded", :name => 'Sarah Farell', :gender => "Female", :dob => "1992/03/22", :email => 'sarahf@email.com', :country => "Sweden", :password => "chicken", :password_confirmation => "chicken"

puts "\tUser count: #{ User.all.count }"


Achievement.destroy_all
a1 = Achievement.create :date => "2016/11/28", :image => "coming soon", :description => "Great weather, good food, awesome time."
a2 = Achievement.create :date => "2016/11/29", :image => "coming soon", :description => "Great weather, good food, awesome time."
a3 = Achievement.create :date => "2016/10/12", :image => "coming soon", :description => "A day in the harbour."

u1.achievements << a1 << a2
u2.achievements << a3

Location.destroy_all
l1 = Location.create :name => "Bondi Beach", :country => "Australia", :description => "Watch a glorious sunrise at world-famous Bondi Beach before an invigorating swim in the turquoise waters or a stroll along the white sands.", :image => "http://bondibeachholidayhomes.com/static/1617/slider/slider4.jpg"
l2 = Location.create :name => "Opera House", :country => "Australia", :description => "The Sydney Opera House is a multi-venue performing arts centre in Sydney, Australia. It is one of the 20th century's most famous and distinctive buildings.", :image => "http://vignette3.wikia.nocookie.net/godzilla/images/e/e9/Sydney_Opera_House.jpg/revision/latest?cb=20160201161141"

l1.achievements << a1 << a2
l2.achievements << a3
