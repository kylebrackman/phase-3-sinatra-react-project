puts "🌱 Seeding spices..."

# Seed your database here
User.create(username: "Kyle")
User.create(username: "Lauren")
User.create(username: "Greg")
User.create(username: "Hayden")
User.create(username: "Anne")

Item.create(item_name: "Scarpa Instinct 5", item_description: "Climbing Shoes", item_review: "my favorite pair of climbing shoes", user_id: 1)
Item.create(item_name: "TC Pro", item_description: "Climbing Shoes", item_review: "my favorite pair of trad shoes", user_id: 2)
Item.create(item_name: "Climbing pack", item_description: "Hard Gear", item_review: "meh", user_id: 3)

puts "✅ Done seeding!"
