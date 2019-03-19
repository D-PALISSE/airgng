puts 'Cleaning DB...'
Goat.destroy_all

puts 'Creating new goats'

# TODO: REMPLIR LES CHAMPS VIDE CI-DESOUS

david = User.create!(password: "123456")
thierry = User.create!(password: "123456")
matthias = User.create!(password: "123456")
nassim = User.create!(password: "123456")

species = %w[]
Goat.create!(name: "Jacqueline", specie: , details: , owner: david, photo: File.open(Rails.root.join('db/fixtures/goats/chevre_1.jpg')))
Goat.create(name: "Magdalena", specie: , details: , photo:)
Goat.create(name: "Josette", specie: , details: , photo:)
Goat.create(name: "Dounia", specie: , details: , photo:)
Goat.create(name: "Sabrina", specie: , details: , photo:)
Goat.create(name: "Diana", specie: , details: , photo:)
Goat.create(name: "Carline", specie: , details: , photo:)
Goat.create(name: "Charley", specie: , details: , photo:)
Goat.create(name: "Margaux", specie: , details: , photo:)
Goat.create(name: "Clotilde", specie: , details: , photo:)
Goat.create(name: "Myrtille", specie: , details: , photo:)
Goat.create(name: "Angela", specie: , details: , photo:)
Goat.create(name: "Sandra", specie: , details: , photo:)

Boooking.create()

puts 'Finished!'
