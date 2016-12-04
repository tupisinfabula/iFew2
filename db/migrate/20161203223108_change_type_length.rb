class ChangeTypeLength < ActiveRecord::Migration
  def change
    change_column :workouts, :length, :float
  end
end
