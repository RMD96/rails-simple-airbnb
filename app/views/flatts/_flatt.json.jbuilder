json.extract! flatt, :id, :name, :address, :description, :price_per_night, :number_of_guests, :created_at, :updated_at
json.url flatt_url(flatt, format: :json)
