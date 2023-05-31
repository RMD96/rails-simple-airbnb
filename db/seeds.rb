# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Charming Loft in Paris',
  address: '12 Rue des Rosiers, 75004 Paris',
  description: 'A charming loft in the heart of the Marais district. One bedroom, open plan living area, and a beautiful view of the city.',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'Cozy Apartment in New York',
  address: '123 Main St, New York, NY 10001',
  description: 'A cozy apartment in the heart of the city. One bedroom, open plan living area, and a fully equipped kitchen.',
  price_per_night: 120,
  number_of_guests: 2
)

Flat.create!(
  name: 'Modern Condo in Toronto',
  address: '123 Front St W, Toronto, ON M5J 2N1',
  description: 'A modern condo in the heart of downtown Toronto. Two bedrooms, open plan living area, and a balcony with a beautiful view of the city.',
  price_per_night: 150,
  number_of_guests: 4
)

Flat.create!(
  name: 'Beachfront Villa in Bali',
  address: 'Jl. Pantai Berawa No.99x, Tibubeneng, Kec. Kuta Utara, Kabupaten Badung, Bali',
  description: 'A beautiful beachfront villa in Bali. Three bedrooms, open plan living area, and a private pool with a stunning view of the ocean.',
  price_per_night: 200,
  number_of_guests: 6
)
