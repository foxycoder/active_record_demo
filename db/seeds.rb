Role.destroy_all
Movie.destroy_all

Actor.destroy_all
lowe = Actor.create({ name: "Rob Lowe", birth_date: Date.parse("1962-09-24") })
spacey = Actor.create({ name: "Kevin Spacey", birth_date: Date.parse("1964-09-24") })
roberts = Actor.create({ name: "Julia Roberts", birth_date: Date.parse("1972-04-17") })

Genre.destroy_all
action = Genre.create({ name: "Action" })
comedy = Genre.create({ name: "Comedy" })
foreign = Genre.create({ name: "Foreign" })

Director.destroy_all
spielberg = Director.create({ first_name: "Steven", last_name: "Spielberg", country: "US" })
lang = Director.create({ first_name: "Fritz", last_name: "Lang", country: "DE" })
anderson = Director.create({ first_name: "Wes", last_name: "Anderson", country: "US" })
verhoeven = Director.create({ first_name: "Paul", last_name: "Verhoeven", country: "NL" })

jurassic_park = Movie.create({
  title: "Jurassic Park",
  plot: "Well there's this dinosaur genes, and something with a stone and an insect inside it..",
  picture: "http://media-curse.cursecdn.com/attachments/114/967/89e34768e944a3fbb38c9395ac6ed4f7.jpeg",
  release_date: Date.parse("1994-10-4"),
  duration: 120,
  director_id: spielberg.id
})

Role.create([
  { name: "Bad guy #2", actor: lowe, movie: jurassic_park},
  { name: "Hot blond woman", actor: roberts, movie: jurassic_park}
])

jurassic_park.genres << comedy
jurassic_park.genres << action
