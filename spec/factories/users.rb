require 'faker'
# create fake user to populate db
FactoryGirl.define do
  factory :user, class: User do
    name Faker::Name.name
    sequence(:email) { |n| "#{SecureRandom.hex}user#{n}@gmail.com" }
    password SecureRandom.hex
    weight Random.rand(80..89)
    weight_goal Random.rand(70..79)
  end
end

FactoryGirl.define do
  factory :sam, class: User do
    name 'sam'
    email 'sam@gmail.com'
    password 'test12345'
    weight 88
    weight_goal 82
    avatar 'avatar1.png'
  end
end
