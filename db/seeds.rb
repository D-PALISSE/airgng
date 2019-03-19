puts 'Cleaning DB...'
Goat.destroy_all
User.destroy_all
Booking.destroy_all

puts 'Creating new goats'

# TODO: REMPLIR LES CHAMPS VIDE CI-DESOUS

david = User.create!(first_name: "David", last_name: "PALISSE", description: "ceci est une description", email: "d.pall@mycheptel.fr", password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/david.jpg')))
thierry = User.create!(first_name: "Thierry", last_name: "DE AZEVEDO", description: "ceci est une description", email: "tda@campagne.com" ,password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/thierry.jpg')))
matthias = User.create!(first_name: "Matthias", last_name: "GEOFFROY",  description: "ceci est une description", email: "mgeof@prairie.com",password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/matthias.jpg')))
nassim = User.create!(first_name: "Nassim", last_name: "BOUKHALFA",  description: "ceci est une description", email: "nassbouk@vivelanature.com" ,password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/nassim.jpg')))


goat_1 = Goat.create!(name: "Jacqueline", specie: "chèvre des fossés",
  description: "My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Roubaix", owner: david, photo: File.open(Rails.root.join('db/fixtures/goats/chevre_1.jpg')))
goat_2 =Goat.create(name: "Magdalena", specie: "alpine",
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Les Herbiers", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_2.jpg')))
goat_3 =Goat.create(name: "Josette", specie: "poitevine" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Orléans", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_3.jpg')))
goat_4 =Goat.create(name: "Dounia", specie: "lorraine" ,
  description: "My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Nantes", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_4.jpg')))
goat_5 =Goat.create(name: "Sabrina", specie: "chèvre du massif central" ,
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Grenoble", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_5.jpg')))
goat_6 =Goat.create(name: "Diana", specie: "saanen" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Rodez", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_6.jpg')))
goat_7 =Goat.create(name: "Carline", specie: "angora" ,
  description: "My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Clermont-ferrand", owner: thierry, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_7.jpg')))
goat_8 =Goat.create(name: "Charley", specie: "provençale" ,
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Albi", owner: thierry, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_8.jpg')))
goat_9 =Goat.create(name: "Margaux", specie: "rove" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Nancy", owner: thierry, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_9.jpg')))
goat_10 =Goat.create(name: "Clotilde", specie: "corse" ,
  description:"My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Libourne", owner: thierry, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_10.jpg')))
goat_11 =Goat.create(name: "Myrtille", specie: "pyrénéenne" ,
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Saint Brieuc", owner: thierry, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_11.jpg')))
goat_12 =Goat.create(name: "Angela", specie: "provençale" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Ajaccio", owner: thierry, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_12.jpg')))

Booking.create(user: matthias, goat: goat_6, status: "pending" , beginning_date: "25/03/2019", end_date: "27/03/2019")
Booking.create(user: matthias, goat: goat_3, status: "validate" , beginning_date: "30/03/2019", end_date: "04/04/2019")
Booking.create(user: matthias, goat: goat_12, status: "denied" , beginning_date: "25/03/2019", end_date: "27/03/2019")
Booking.create(user: nassim, goat: goat_8, status: "pending" , beginning_date: "22/03/2019", end_date: "23/03/2019")
Booking.create(user: nassim, goat: goat_12, status: "validate" , beginning_date: "25/03/2019", end_date: "27/03/2019" )

puts 'Finished!'
