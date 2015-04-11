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