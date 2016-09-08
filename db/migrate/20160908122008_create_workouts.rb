class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :workout
      t.datetime :date
      t.string :mood
      t.string :length
      t.float :time

      t.timestamps null: false
    end
  end
end
