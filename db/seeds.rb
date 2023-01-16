puts "🌱 Seeding spices..."

# Seed your database here

item_reviews = ["Perfect", "Awesome", "Meh", "Would buy again!", "Worst purchase ever", "Terrible", "Amazing!"]

item_names = ["Scarpa Instinct", "TC Pros", "Miuras", "Black Diamond Helmet", "#2 BD Cam", "BD GriGri", "Mammut Rope"]

User.create(username: "Kyle")
User.create(username: "Lauren")
User.create(username: "Greg")
User.create(username: "Anne")
User.create(username: "Hayden")

User.all.each do |user|
    rand(2..5).times do
        Review.create(item_name: item_names.sample, item_rating: rand(1..10), item_review: item_reviews.sample, user_id: user.id, username: user.username)
    end
end



puts "✅ Done seeding!"
