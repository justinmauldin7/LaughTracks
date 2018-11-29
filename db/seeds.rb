require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

judd = Comedian.create(name: "Judd Apatow", age: 50, city: "New York City")
dave = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington D.C.")
ricky = Comedian.create(name: "Ricky Gervais", age: 57, city: "London")
seth = Comedian.create(name: "Seth Rogan", age: 36, city: "Vancouver")
james = Comedian.create(name: "James Acaster", age: 33, city: "London")
mike = Comedian.create(name: "Mike Birbiglia", age: 40, city: "Shrewsbury")
jerry = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City")
russell = Comedian.create(name: "Russell Brand", age: 43, city: "London")
trevor = Comedian.create(name: "Trevor Noah", age: 34, city: "Johannesburg")
demetri = Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")
steve = Comedian.create(name: "Steve Martin", age: 73, city: "Waco")
tig = Comedian.create(name: "Tig Notaro", age: 47, city: "Jackson")


Special.create(title: "Judd Apatow: The Return", year: 2017, runtime: 69, comedian_id: judd.id, image: "https://m.media-amazon.com/images/M/MV5BMTY2NTAyNTYyOV5BMl5BanBnXkFtZTgwNDU2NTI0NDM@._V1_SY1000_CR0,0,682,1000_AL_.jpg")
Special.create(title: "Dave Chappelle: Equanimity", year: 2017, runtime: 63, comedian_id: dave.id, image: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(title: "Dave Chappelle: The Bird Revelation", year: 2017, runtime: 49, comedian_id: dave.id, image: "https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg")
Special.create(title: "Ricky Gervais: Humanity", year: 2018, runtime: 78, comedian_id: ricky.id, image: "https://m.media-amazon.com/images/M/MV5BZWEyYTc2ZGYtMTE4MS00YjJkLWFiNGMtNDg0Mjc4YjllZTFkXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg")
Special.create(title: "Seth Rogen's Hilarity for Charity", year: 2018, runtime: 70, comedian_id: seth.id, image: "https://m.media-amazon.com/images/M/MV5BODFlNTFiYWQtNmQ1My00ZTk3LTlhNzQtMWFkNTgxZThkMzQ4XkEyXkFqcGdeQXVyNjc5NTc1MTg@._V1_.jpg")
Special.create(title: "James Acaster: Recognise", year: 2018, runtime: 51, comedian_id: james.id, image: "https://m.media-amazon.com/images/M/MV5BYjE3ZmU5MjQtMzZhYS00NDk3LThkOTEtZDNjODJiM2FiOWVlXkEyXkFqcGdeQXVyNjkzOTYwMzk@._V1_.jpg")
Special.create(title: "James Acaster: Represent", year: 2018, runtime: 53, comedian_id: james.id, image: "https://m.media-amazon.com/images/M/MV5BNGQ1MTViN2UtNTY2MC00OGY5LWIxN2ItZTcwODIxZTM2YjlmXkEyXkFqcGdeQXVyMjIzODg1Mzk@._V1_SY1000_SX1000_AL_.jpg")
Special.create(title: "James Acaster: Reset", year: 2018, runtime: 49, comedian_id: james.id, image: "https://m.media-amazon.com/images/M/MV5BZTRlMmY4NTItZjA2MC00ZTA3LThkYTktMGYyN2EzZmQ0YWRhXkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_.jpg")
Special.create(title: "James Acaster: Recap", year: 2018, runtime: 53, comedian_id: james.id, image: "https://m.media-amazon.com/images/M/MV5BYTNjYmI4ODItZGU5NC00OGNiLWIwYjAtNWZmNTY2YjcwNzc1XkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
Special.create(title: "Mike Birbiglia: What I Should Have Said Was Nothing", year: 2008, runtime: 60, comedian_id: mike.id, image: "https://m.media-amazon.com/images/M/MV5BMTk0NzY2NzM5Ml5BMl5BanBnXkFtZTcwNjE2Mjg2MQ@@._V1_SY1000_CR0,0,704,1000_AL_.jpg")
Special.create(title: "Mike Birbiglia: Thank God for Jokes", year: 2017, runtime: 70, comedian_id: mike.id, image: "https://m.media-amazon.com/images/M/MV5BNjM1NjNjOTUtMzk3Yi00NzZmLTg3NTQtZjE0N2U1MTYyZTViXkEyXkFqcGdeQXVyNDQyODU5MDQ@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(title: "Jerry Seinfeld: Stand-Up Confidential", year: 1987, runtime: 55, comedian_id: jerry.id, image: "https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_.jpg")
Special.create(title: "Jerry Before Seinfeld", year: 2017, runtime: 61, comedian_id: jerry.id, image: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg")
Special.create(title: "Russell Brand: Messiah Complex", year: 2013, runtime: 89, comedian_id: russell.id, image: "https://m.media-amazon.com/images/M/MV5BMjE2MjUzMTQzN15BMl5BanBnXkFtZTgwNzc5MTAxMzE@._V1_.jpg")
Special.create(title: "Trevor Noah: Son of Patricia", year: 2018, runtime: 63, comedian_id: trevor.id, image: "https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg")
Special.create(title: "Demetri Martin: The Overthinker", year: 2018, runtime: 56, comedian_id: demetri.id, image: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg")
Special.create(title: "Steve Martin & Martin Short: An Evening You Will Forget For the Rest of Your Life", year: 2018, runtime: 73, comedian_id: steve.id, image: "https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
Special.create(title: "Tig Notaro: Happy To Be Here", year: 2018, runtime: 58, comedian_id: tig.id, image: "https://m.media-amazon.com/images/M/MV5BNWQxMDgzYjAtZTZkOS00MWM2LWIxNTUtZTUwYmUxMWQ0NzM1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
