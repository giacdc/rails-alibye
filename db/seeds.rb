# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Alibye.destroy_all
puts "Creating users..."
User.create(email: "123@123.com", password: "123456")
puts "Creating alibyes..."

# family_diner = Alibye.create(title: "Family Diner", user: User.last, category: "Family", price_per_hour: 50, description: "Are you tired about family dinner? How about taking a break this time and enjoy your full week-end without taking care about anything?")
# morning_meeting = Alibye.create(title: "Morning meeting", user: User.first, category: "Work", price_per_hour: 50, description: "I can't make it today because I accidentally joined a marathon last night. Turns out sleepwalking and running shoes don't mix well.")
# help_for_murder = Alibye.create(title: "Help for murder", user: User.first, category: "Murder", price_per_hour: 500, description: "Are you still looking for the best partener to help you kill your boss?")
# relationships = Alibye.create(title: "Missing dates", user: User.last, category: "Relationships", price_per_hour: 150, description: "Are you too lazy to go to this date that's been scheduled for several days? HOw about letting the expert go for you?")

family_diner = Alibye.create(title: "Family Diner", category: "Family", price_per_hour: 50, description: "You tired?")

puts "Created #{family_diner.title}"

puts "Finished!"

puts "Creating alibyes..."
