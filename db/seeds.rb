# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Alibye.destroy_all

alibyes_descriptions = [
  "i have to swim",
  "you have a date tonight but want to skip it?",
  "Family Diner? Boring situation, we cover you",
  "Have an apointement you need to not go? Don't worry"
]

alibyes_titles = ["Swimming", "Football game", "Ate too much", "Food poisoning", "Covid"]

category = Alibye::CATEGORIES

puts "Creating users..."
User.create(email: "123@123.com", password: "123456")
User.create(email: "abc@abc.com", password: "123456")

# puts "Creating alibyes..."
# Alibye.create(
#   title: "Family Dinner",
#   user: User.last,
#   category: "Family",
#   price_per_hour: 50,
#   description: "Are you tired about family dinner? How about taking a break this time and enjoy your full week-end without taking care about anything?"
# )
# Alibye.create(
#   title: "Morning meeting",
#   user: User.first,
#   category: "Work",
#   price_per_hour: 50,
#   description: "I can't make it today because I accidentally joined a marathon last night. Turns out sleepwalking and running shoes don't mix well."
# )
# Alibye.create(
#   title: "Help for murder",
#   user: User.first,
#   category: "Murder",
#   price_per_hour: 500,
#   description: "Are you still looking for the best partener to help you kill your boss?"
# )
# Alibye.create(
#   title: "Missing dates",
#   user: User.last,
#   category: "Relationships",
#   price_per_hour: 150,
#   description: "Are you too lazy to go to this date that's been scheduled for several days? HOw about letting the expert go for you?"
# )
puts "creating random alibyes"

10.times do
  Alibye.create!(
    title: alibyes_titles.sample,
    category: category.sample,
    user: User.last,
    price_per_hour: rand(1..500),
    description: alibyes_descriptions.sample
  )

  puts "created Alibye"
end

Alibye.all.each do |alibye|
  puts "Created #{alibye.title}"
end

puts "Finished!"
