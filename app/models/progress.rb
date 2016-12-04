# Progress model
class Progress < ActiveRecord::Base
  belongs_to :user

  validates :date, presence: true
  validates :weight, presence: true
  validate  :past_date

  def past_date
    errors.add(:past_date, "can't be in the future") if date > Date.today
  end
end
