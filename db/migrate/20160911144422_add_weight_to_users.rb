class AddWeightToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weight, :float
    add_column :users, :weight_goal, :float
  end
end
