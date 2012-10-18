namespace :db do
  desc "Erase and fill database."
  task :populate => :environment do
    puts "Empty the DB"
    [AdminUser, Offer, Merchant, Category, Order, OrderTransaction].each(&:delete_all)

    puts "Create Admin User"
    AdminUser.create!(email: "jason@pignite.com", password: "test123", password_confirmation: "test123")

    puts "Make some Categories"
    categories = %w(Coffee\ Shops Family Automotive Electronics Beauty Furniture)
    categories.each do |c|
      Category.create!(:name => c)
      puts "Category created: #{c}"
    end

    puts "Make some merchants"
    10.times do |i|
      merchant = Merchant.new(
        name: Faker::Company.name, 
        address: Faker::Address.street_address,  
        city: Faker::Address.city, 
        state: Faker::Address.state_abbr, 
        zip: Faker::Address.zip_code, 
        phone_number: Faker::PhoneNumber.phone_number, 
        email: Faker::Internet.email, 
        homepage: Faker::Internet.domain_name
      )
      merchant.remote_logo_url = "http://lorempixel.com/output/city-q-c-640-480-6.jpg"
      merchant.save!
      puts "Creating merchant #{i}"
    end

    puts "Make some deals"
    10.times do |i|
      offer = Deal.new(
        name: Faker::Company.name, 
        tagline: Faker::Company.catch_phrase, 
        description: Faker::Lorem.paragraphs, 
        normal_price: 50.0, 
        price: 25.0, 
        quantity: 100, 
        start_date: Time.now, 
        end_date: Time.now + 5.days, 
        expiration_date: Time.now + 10.days,  
        merchant_id: Merchant.all.sample.id
      )
      offer.remote_image_url = "http://lorempixel.com/output/sports-q-c-640-480-3.jpg"
      offer.category_ids = Category.all.sample(2).map {|x| x.id}
      offer.save!
      puts "Creating deal #{i}"
    end

    puts "Make some coupons"
    10.times do |i|
      offer = Coupon.new(
        name: Faker::Company.name, 
        tagline: Faker::Company.catch_phrase, 
        description: Faker::Lorem.paragraphs, 
        start_date: Time.now, 
        end_date: Time.now + 5.days, 
        expiration_date: Time.now + 10.days,  
        merchant_id: Merchant.all.sample.id
      )
      offer.remote_image_url = "http://lorempixel.com/output/animals-q-c-640-480-2.jpg"
      offer.category_ids = Category.all.sample(2).map {|x| x.id}
      offer.save!
      puts "Creating Coupon #{i}"
    end

    puts "Make some ads"
    10.times do |i|
      offer = Ad.new(
        name: Faker::Company.name, 
        tagline: Faker::Company.catch_phrase, 
        description: Faker::Lorem.paragraphs, 
        start_date: Time.now, 
        end_date: Time.now + 5.days, 
        expiration_date: Time.now + 10.days,  
        merchant_id: Merchant.all.sample.id
      )
      offer.remote_image_url = "http://lorempixel.com/output/people-q-c-640-480-2.jpg"
      offer.category_ids = Category.all.sample(2).map {|x| x.id}
      offer.save!
      puts "Creating Ad #{i}"
    end

  end
end