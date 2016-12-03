require 'factory_girl_rails'

sam = FactoryGirl.create(:sam)
sam.workouts.create(workout: 'run', date: Time.now, mood: 'great', length: 10, time: 22)

FactoryGirl.create(:user)
