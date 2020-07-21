# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bob = Artist.create(name: "bob", bio: "worst ever")
mary = Artist.create(name: "mary", bio: "kinda okay")
tom = Artist.create(name: "tom", bio: "great")

rock = Genre.create(name: "rock")
rap = Genre.create(name: "rap")
pop = Genre.create(name: "pop")

one = Song.create(name: "oh yeah", artist_id: bob.id, genre_id: rock.id)
two = Song.create(name: "dubop", artist_id: mary.id, genre_id: rap.id)
three = Song.create(name: "mary had a little lamb", artist_id: mary.id, genre_id: pop.id)