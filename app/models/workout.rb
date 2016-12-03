# workout model
class Workout < ActiveRecord::Base
  belongs_to :user
  # validates
  validates :date, presence: true
  validates :workout, presence: true
  validates :mood, presence: true
  validates :length, presence: true
  validates :time, presence: true
end
