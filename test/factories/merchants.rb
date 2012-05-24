# Read about factories at https://github.com/thoughtbot/factory_girl
if Rails.env.test?
	include ActionDispatch::TestProcess
end
FactoryGirl.define do
  factory :merchant do
    name "Joe's Muffler Shop"
    address "123 A St."
    address2 ""
    city "Olympia"
    state "WA"
    zip "98501"
    logo {fixture_file_upload('test/fixtures/files/mekong.jpg', 'image/jpg')}
    phone_number "1234567890"
    email "joe@joesmufflershop.com"
    homepage "http://joesmufflershop.com"
    map_link "http://google.com/map/joesmufflershop"
  end
end
