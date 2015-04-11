User.create!(name:  "undauted",
             email: "piotrkacprowicz92@gmail.com",
             password:              "lysy10",
             password_confirmation: "lysy10",
             admin:     true)
             

99.times do |n|
  name  = Faker::Name.name
  email = "piotrkacprowicz92-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
             password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }