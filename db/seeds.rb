# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.new(
  id: 2,
  name: "Mary Castro",
  email: "mary@test.com",
  password: "1Qaz2wsx!3edc",
  password_confirmation: "1Qaz2wsx!3edc"
)
user.save!

user = User.new(
  id: 3,
  name: "Jane Smith",
  email: "jane@example.com",
  password: "a7&43Wcxy6ij",
  password_confirmation: "a7&43Wcxy6ij"
)
user.save!
instruments = [
  {
    name: "Gitara Harley Benton",
    category: "Musical Instruments",
    price_per_day: 100.0,
    available: true,
    condition: "used",
    description: "Used Harley Benton Cst 24 Deluxe Electric Guitar",
    image: Rails.root.join("app/assets/images/gitara_harley_benton.jpg").open,
    user_id: 2,
  },
  {
    name: "Ohuhu Keyboard Piano",
    category: "Musical Instruments",
    price_per_day: 125.0,
    available: true,
    condition: "new",
    description: "Ohuhu Electric Piano Keyboard provides musical delight for every ability level. Rhythm, notes and melody are just the beginning!",
    image: Rails.root.join("app/assets/images/ohuhu_keyboard_piano.jpg").open,
    user_id: 3,
  },
  {
    name: "FIFINE XLR/USB Dynamic Microphone",
    category: "Audio Equipment",
    price_per_day: 55.0,
    available: true,
    condition: "excellent",
    description: "The studio recording microphone grows alongside your studio setup equipment, like sound cards and mixers, which improves vocal speaking audio flexibility to make you explore various types of music recording singing.",
    image: Rails.root.join("app/assets/images/microphone_fifine.jpg").open,
    user_id: 3,
  },
  {
    name: "Disino USB Microphone Cable",
    category: "Audio Equipment, Accessories",
    price_per_day: 10.0,
    available: true,
    condition: "mint",
    description: "DISINO XLR to usb adapter doesn't need extra driver. Just plug the USB connector to your computer, your computer will recognize it as an audio input and will install all the necessary drivers automatically.",
    image: Rails.root.join("app/assets/images/cable_usb_audio.jpg").open,
    user_id: 3,
  },
  {
    name: "Sakkusu Alto Saxophone",
    category: "Musical Instruments",
    price_per_day: 125.0,
    available: true,
    condition: "mint",
    description: "Sakkusu Alto Saxophone. Solid construction and mechanism, comfortable key layout. Top F# key. This extra top note was introduced on most saxes in the 1960s and most teachers recommend it. High-Quality Pisoni Pads.",
    image: Rails.root.join("app/assets/images/sakkusu_alto_saxophone.jpg").open,
    user_id: 2,
  }
]
