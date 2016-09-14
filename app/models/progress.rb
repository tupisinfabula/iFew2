class Progress < ActiveRecord::Base
  belongs_to :user

  validates :date, presence: true
  validates :weight, presence: true
  validate  :past_date

  def past_date
    if date > Time.now
      errors.add(:past_date, "can't be in the future")
    end
  end

end
