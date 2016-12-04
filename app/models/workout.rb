# Workout model
class Workout < ActiveRecord::Base
  belongs_to :user
  # validates
  validates :date, presence: true
  validates :workout, presence: true
  validates :mood, presence: true
  validates :length, presence: true
  validates :time, presence: true

  def converter_to_miles(number)
    number * 0.62137119
  end

  def converter_to_km(number)
    number / 0.62137119
  end

  def current_month
    Date.today.month
  end
end

