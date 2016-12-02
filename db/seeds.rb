# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "USERS!"
User.destroy_all

u1 = User.create :username => "fc1992", :name => 'Fernando Cris', :gender => "Male", :dob => "1991/08/09", :email => 'fc1992@email.com', :country => "Brazil", :password => "chicken", :password_confirmation => "chicken", :image => "adult-1836445_1280_kmuigx.jpg"
u2 = User.create :username => "benza", :name => 'Kristina Benz', :gender => "Female", :dob => "1989/01/15", :email => 'kristina@email.com', :country => "France", :password => "chicken", :password_confirmation => "chicken", :image => "girl-1192032_1280_nq2vel.jpg"
u3 = User.create :username => "joseph", :name => 'Joseph Smith', :gender => "Male", :dob => "1981/05/20", :email => 'josephs@email.com', :country => "United Kingdom", :password => "chicken", :password_confirmation => "chicken", :image => "hat-591973_1280_zrcpm6.jpg"
u4 = User.create :username => "miss-faded", :name => 'Sarah Farell', :gender => "Female", :dob => "1992/03/22", :email => 'sarahf@email.com', :country => "Sweden", :password => "chicken", :password_confirmation => "chicken", :image => "girl-842719_1280_kl0vbb.jpg"

puts "\tUser count: #{ User.all.count }"


Achievement.destroy_all
a1 = Achievement.create :date => "2016/11/28", :image => "bondi-surfing-at-bondi-beach_i7b2yu.jpg", :description => "Great weather, good food, awesome time.", :title => "My Visit"
a2 = Achievement.create :date => "2016/11/29", :image => "hnldmnedtw17tqbxcog6.jpg", :description => "Kristina was here", :title => "Kristina 29/11/16"
a3 = Achievement.create :date => "2016/10/12", :image => "Man_Sunset_Stockphoto_nkdn75.jpg", :description => "Beautiful architecture, very photo friendly! ", :title => "A day in the harbour"
a4 = Achievement.create :date => "2016/11/01", :image => "sydney-1577740_640_dbsopy.jpg", :description => "Lively place, expensive food.", :title => "Darling Harbour Visit"
a5 = Achievement.create :date => "2016/09/08", :image => "Man_Sunset_Stockphoto_nkdn75.jpg", :description => "Magnificent views. Must go when the weather is good. Joseph and Jen was here. 9/8/16", :title => "Darling Harbour Visit"
a6 = Achievement.create :date => "2016/06/12", :image => "Man_Sunset_Stockphoto_nkdn75.jpg", :description => "Love you... Sydney", :title => "Sarah and Eugeue 12/6/16"
u1.achievements << a1 << a4
u2.achievements << a3 << a2
u4.achievements << a5
u3.achievements << a6


Location.destroy_all
l1 = Location.create :name => "Bondi Beach", :country => "Australia", :description => "Watch a glorious sunrise at world-famous Bondi Beach before an invigorating swim in the turquoise waters or a stroll along the white sands.", :image => "https://img.rezdy.com/PRODUCT_IMAGE/19358/bondi-beach_lg.jpg",
:image2 =>
"https://blog.networks.nokia.com/wp-content/uploads/2015/05/Optus-Nokia-serve-Bondi-Beach.jpg"

l2 = Location.create :name => "Opera House", :country => "Australia", :description => "The Sydney Opera House is a multi-venue performing arts centre in Sydney, Australia. It is one of the 20th century's most famous and distinctive buildings.", :image => "http://vignette3.wikia.nocookie.net/godzilla/images/e/e9/Sydney_Opera_House.jpg/revision/latest?cb=20160201161141",
:image2 => "http://cdn.pcwallart.com/images/sydney-opera-house-section-wallpaper-2.jpg"

l3 = Location.create :name => "Three Sisters", :country => "Australia", :description => "The Three Sisters is the Blue Mountains’ most spectacular landmark. Located at Echo Point Katoomba, around 2.5 kilometres from the Great Western Highway, this iconic visitor attraction is experienced by millions of people each year.
The Three Sisters is essentially an unusual rock formation representing three sisters who according to Aboriginal legend were turned to stone.

The character of the Three Sisters changes throughout the day and throughout the seasons as the sunlight brings out the magnificent colours.  The Three Sisters is also floodlit until around 11pm each evening looking simply spectacular set against the black background of the night sky.", :image => "http://d3n8a8pro7vhmx.cloudfront.net/edonsw/pages/1271/attachments/original/1390519248/Blue_Mountains__Three_Sisters_smaller1_-_purchased_from_istock_(2)_small.jpg?1390519248", :image2 => "https://images8.alphacoders.com/461/thumb-1920-461481.jpg"

l4 = Location.create :name => "Luna Park", :country => "Australia", :description => "Luna Park Sydney (originally Luna Park Milsons Point, also known as Sydney's Luna Park) is an amusement park located in Sydney, New South Wales, Australia. Luna Park is located at Milsons Point, on the northern shore of Sydney Harbour.", :image => "https://images.trvl-media.com/media/content/shared/images/travelguides/destination/10237/Luna-Park-31231.jpg", :image2 => "http://cdn.pcwallart.com/images/original-luna-park-wallpaper-2.jpg"

l5 = Location.create :name => "Darling Harbour", :country => "Australia", :description => "Darling Harbour is one of the Sydney CBD's buzz places comprising cafes, restaurants, shopping complex with food hall, IMAX cinema, maritime museum, Chinese gardens and entertainment attractions.

A former dockside area, the small harbour has been transformed into a major tourist site and leading convention and exhibition centre.It now hosts an extraordinary number of water-front restaurants and its wharves are home to a number of cruise and function boats.

Darling Harbour is split in two by the historic Pyrmont Bridge, with attractions on both the southern and northern sides of the bridge.

Entertainment takes place on a regular basis at points around Darling Harbour and on Saturday evenings there is a fireworks display over the southern part of the tiny harbour.", :image => "http://www.darlingharbour.com/media/543105/cockle_bay_daytime_background_image.jpg", :image2 => "https://www.darlingharbour.com/media/543106/pyrmont_bridge_daytime_background_image.jpg"

l1.achievements << a1 << a2
l2.achievements << a3
l3.achievements << a5
l5.achievements << a4 << a6
