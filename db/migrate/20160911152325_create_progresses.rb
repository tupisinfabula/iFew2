class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.float :weight
      t.datetime :date

      t.timestamps null: false
    end
  end
end
