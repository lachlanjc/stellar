# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :thing do
    name "MyString"
    pinned false
    closed false
  end
end
