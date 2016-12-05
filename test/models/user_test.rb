require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = build(:sam)
  end

  test 'valid user' do
    assert @user.valid?
  end
end
