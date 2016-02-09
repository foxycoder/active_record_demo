Actor.destroy_all
Actor.create([
    { name: "Rob Lowe", birth_date: Date.parse("1962-09-24") },
    { name: "Kevin Spacey", birth_date: Date.parse("1964-09-24") },
    { name: "Julia Roberts", birth_date: Date.parse("1972-04-17") }
])

Genre.destroy_all
Genre.create([
    { name: "Action" },
    { name: "Comedy" },
    { name: "Foreign" } # For Andrew :p
])
