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
  "I have a pony competition!",
  "You have a date tonight but want to skip it?",
  "Family Dinner? Boring situation, we cover you",
  "Have an apointement you need to not go? Don't worry",
  "Are you tired about family dinner? How about taking a break this time
    and enjoy your full week-end without taking care about anything?",
  "I can't make it today because I accidentally joined a marathon last night."
]

alibyes_titles = [
  "Lost wifi", "Training for marathon next year",
  "Summer body", "Football game", "Hangover", "Food poisoning", "Covid",
  "Just broke-up", "Lost my phone", "Missed the alarm", "Broke with my cat"
]

category = Alibye::CATEGORIES

puts "Creating users..."
puts "Created users.."

User.create(email: "123@123.com", password: "123456")
User.create(email: "abc@abc.com", password: "123456")
User.create(email: "ade@ade.com", password: "123456")
User.create(email: "lau@lau.com", password: "123456")

puts "creating random alibyes"

30.times do
  Alibye.create!(
    title: alibyes_titles.sample,
    category: category.sample,
    user: User.all.sample,
    price_per_hour: rand(1..500),
    description: alibyes_descriptions.sample
  )
  puts "created Alibye"
end

Alibye.all.each do |alibye|
  puts "Created #{alibye.title}"
end
