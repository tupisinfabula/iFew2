class ChangeDatetimeFormatInProgress < ActiveRecord::Migration
  def change
    change_column :progresses, :date, :date
  end
end
