# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Image.destroy_all


artists = Artist.create([
  { name: 'Arctic Monkeys', photo_url: 'http://www.arcticmonkeysnews.com/wp-content/uploads/2014/09/Arctic-Monkeys-2010-Large-Background-Wallpaper-For-Computer.jpg'},
  { name: 'Portugal The Man', photo_url: 'http://www.billboard.com/files/styles/promo_650/public/media/portugal-the-man-650-430-hayley-young.jpg'},
  { name: 'Dr Dog', photo_url: 'http://www.anti.com/media/press/Dr._Dog_by_Nicky_Devine_Flag_Sitting_1.jpg'}
  ])

Image.create( date: '11/08/2015', venue: 'Red Hat Amphitheater', location: 'Raleigh, NC', photo_url: 'http://i.telegraph.co.uk/multimedia/archive/02719/arctic-monkeys-2_2719207b.jpg', artist_id: artists[0].id)
# Image.create( date: '11/15/2011', venue: 'PNC Arena', location: 'Raleigh, NC', photo_url: 'https://arcticmonkeysnews.files.wordpress.com/2012/01/arctic_monkeys_by_andy_willsher_lccc_july_200701_website_image_ying_standard.jpg', artist_id: artists[0].id)
# I recommend creating some more seed data with users and demonstrating the "My artists" functionality, but otherwise these seeds look great!
