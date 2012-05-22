# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coupon do
    name "MyString"
    description "MyText"
    printable_file "MyString"
    expiration_date "2012-05-22 01:47:17"
    merchant_id 1
  end
end
