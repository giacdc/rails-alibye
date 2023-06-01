puts "Cleaning database..."
User.destroy_all
Alibye.destroy_all
puts "Swept and cleansed!"

category = Alibye::CATEGORIES

puts "Creating users..."
puts ".........................."

User.create(email: "123@123.com", password: "123456")
User.create(email: "abc@abc.com", password: "123456")
User.create(email: "ade@ade.com", password: "123456")
User.create(email: "tuh@lau.com", password: "123456")
User.create(email: "meh@ade.com", password: "123456")
User.create(email: "hug@lau.com", password: "123456")
User.create(email: "turmoil@ade.com", password: "123456")
User.create(email: "john@lau.com", password: "123456")

puts "Created users."

puts "Creating random alibyes..."
puts ".........................."

Alibye.create!(
  title: "Washing Machine ate my sock",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Organization of a S&R mission to retrieve it. Includes SWAT team and video proof."
)

puts "done!"

Alibye.create!(
  title: "Alien Invasion Drill",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "A scheduled impromptu alien invasion drill. Includes flying saucers, ray guns and the 1949 Roosevelt  1:1 replica."
)

puts "done!"

Alibye.create!(
  title: "Unexpected Puppet Show",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "A hidden underground puppet show in need of a volunteer to control the leg of a giant puppet. Includes giant puppet."
)

puts "done!"

Alibye.create!(
  title: "World Record Attempt: Most Pancakes Flipped",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Most pancakes flipped in one minute attempt. Includes 600 pancakes and Guinness World Record certificate."
)

puts "done!"

Alibye.create!(
  title: "Quantum Entanglement Experiment",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Become entangled with a parallel universe version of yourself and conduct a series of intricate experiments to untangle destinies. Includes alternate reality clone (1-2 business days International Shipping, !! NOTE: WILL SELF DESTRUCT WHEN BOOKING IS OVER !!.)"
)

puts "done!"

Alibye.create!(
  title: "Unicorn Riding Lessons",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Grants a once-in-a-lifetime opportunity to learn the art of riding unicorns. Includes synchronized galloping choreographies."
)

puts "done!"

Alibye.create!(
  title: "Undercover Penguin Research",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Recruitment by a covert organization to study the social dynamics of penguin colonies in Antarctica. Includes valuable insights into penguin diplomacy, a snow suit, a personalized Igloo with your name on it and 1:1 penguin egg replica."
)

puts "done!"

Alibye.create!(
  title: "Emergency Llama Whispering",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "A group of distressed llamas reaches out telepathically, requesting urgent assistance with their existential crisis. Includes a llama-whispering skill certificate and Original Llama Saliva"
)

puts "done!"

Alibye.create!(
  title: "Gnome Liberation Campaign",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Join a noble cause to liberate garden gnomes from their concrete prisons. Includes an elaborate jailbreak plan."
)

puts "done!"

Alibye.create!(
  title: "Mastering the Art of Bubble Wrap Popping",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Quest to become a master bubble wrap popper. Each pop brings closer to achieving true enlightenment. Includes 1km of bubble wrap and BWAP certificate."
)

puts "done!"

Alibye.create!(
  title: "Emergency Squirrel Translation",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "A family of squirrels seeks help in translating their complex language. An arduous task. Includes Family of Squirrels."
)

puts "done!"

Alibye.create!(
  title: "Banana Peel Awareness Campaign",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Be appointed as the spokesperson for an important campaign to raise awareness about the dangers of banana peels. Slip-ups are a serious matter. Includes the only 2 witnesses to ever have slipped on a peel."
)

puts "done!"

Alibye.create!(
  title: "Pyramid Construction Internship",
  category: category.sample,
  user: User.all.sample,
  price_per_hour: rand(1..500),
  description: "Be selected for an internship on a secret project involving the construction of a new pyramid. Includes Ancient Engineering Techniques certificate."
)

puts "done!"


Alibye.all.each do |alibye|
  puts "Created #{alibye.title}"
end
