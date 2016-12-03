require 'factory_girl_rails'

FactoryGirl.create(:sam)

10.times do
  FactoryGirl.create(:user)
end
