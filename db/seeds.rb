# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Channels
channel1 = Channel.find_or_create_by(name: "HBO")
channel2 = Channel.find_or_create_by(name: "Discovery")
channel3 = Channel.find_or_create_by(name: "Pogo")
channel4 = Channel.find_or_create_by(name: "Hungama")

Show.create(channel_id: channel1.id, name: "Jinny and Johny", show_time: "14:00", duration: "30")
Show.create(channel_id: channel2.id, name: "Selena Gomez Show", show_time: "15:00", duration: "30")
Show.create(channel_id: channel3.id, name: "Friends", show_time: "19:00", duration: "30")
Show.create(channel_id: channel4.id, name: "Shinchan", show_time: "20:00", duration: "60")