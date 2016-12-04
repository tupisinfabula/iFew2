require 'factory_girl_rails'

sam = FactoryGirl.create(:sam)
sam.workouts.create(id: 1, workout: 'run', date: Date.today.advance(days: -2), mood: 'great', length: 5, time: 22)
sam.workouts.create(id: 2, workout: 'run', date: Date.today.advance(days: -1), mood: 'fine', length: 7, time: 28)
sam.workouts.create(id: 3, workout: 'run', date: Date.today, mood: 'awesome', length: 6, time: 18)
sam.progresses.create(id: 1, weight: 86, date: Date.today.advance(days: -1))
FactoryGirl.create(:user)
