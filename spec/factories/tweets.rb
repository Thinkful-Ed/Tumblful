# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    user { FactoryGirl.create(:user) }
    content { FFaker::Lorem.sentence(3) }
  end
end
