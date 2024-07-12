# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data
Booking.destroy_all
Event.destroy_all
Category.destroy_all
User.destroy_all

# Create users
user1 = User.create(email: "test@gmail.com", password: "123456", first_name: "John", last_name: "Doe")

# Create categories
sport_category = Category.create(name: "Sport")
concert_category = Category.create(name: "Concert")
cinema_category = Category.create(name: "Cinema")

# Create events
event1 = Event.create(
  name: "Soccer Match",
  description: "The one and only Manchester vs Liverpool match of the year",
  location: "England",
  price: 100,
  capacity: 100,
  date: Date.today,
  category: sport_category,
  user: user1
)

# Additional events, categories, and users can be created similarly

puts "Seed data created successfully"
