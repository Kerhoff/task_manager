namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Test User",
                         email: "test_user@test.com",
                         password: "test_test",
                         password_confirmation: "test_test")
    admin.toggle!(:admin)
    
    99.times do |n|
      name  = Faker::Name.name
      email = "test_user-#{n+1}@test.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    
    users = User.all(limit: 6)
    50.times do |n|
      content = Faker::Lorem.sentence(5)
      name  = "Stroy #{n+1}"
      users.each { |user| user.stories.create!(name: name, content: content) }
    end
  end
end