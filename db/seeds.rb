require 'factory_girl_rails'

sam = FactoryGirl.create(:sam)
# create workouts
sam.workouts.create([
        { id: 1, workout: 'run', date: DateTime.now.advance(days: -2),
          mood: 'great', length: 5, time: 22 },
        { id: 2, workout: 'run', date: DateTime.now.advance(days: -1),
          mood: 'fine', length: 7, time: 28 },
        { id: 3, workout: 'run', date: DateTime.now,
          mood: 'awesome', length: 6, time: 18 }])
# create progress
sam.progresses.create(id: 1, weight: 86, date: DateTime.now.advance(days: -1))
# create todo list
sam.todo_lists.create(id: 1, title: 'Food shopping', description: 'Jumbo, Lidl')
# create todo item on todo list
todo_list = TodoList.first
todo_list.todo_items.create([{ id: 1, content: 'yogurt' }, { id: 2, content: 'banana' }])
FactoryGirl.create(:user)
