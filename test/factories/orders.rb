# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    address "MyString"
    address2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
  end
end
