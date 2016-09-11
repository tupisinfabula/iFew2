class RemoveWeightFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :weight, :float
  end
end
