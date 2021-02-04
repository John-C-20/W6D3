# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

usr1 = User.create!(username: "Rembrandt")
usr2 = User.create!(username: "Albrecht Dürer")
usr3 = User.create!(username: "Michelangelo")
usr4 = User.create!(username: "Leonardo da Vinci")

art1 = Artwork.create!(title: "Night Watch", url: "www.nwatch.com", artist_id: usr1.id)
art2 = Artwork.create!(title: "Hare", url: "www.hare.com", artist_id: usr2.id)
art3 = Artwork.create!(title: "Sistine Chapel Ceiling Fresco", url: "www.schaple.com", artist_id: usr3.id)
art4 = Artwork.create!(title: "The Mona Lisa", url: "www.monalisa.com", artist_id: usr3.id)

share1 = ArtworkShare.create!(artwork_id: art1.id, viewer_id: usr4.id)
share2 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: usr1.id)
share3 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: usr3.id)
share4 = ArtworkShare.create!(artwork_id: art4.id, viewer_id: usr1.id)