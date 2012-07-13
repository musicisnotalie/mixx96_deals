# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

if Rails.env == "development"
	Merchant.delete_all
	
	merchants = %w(Mekong Caffe\ Vita Wind\ Up\ Here)
	
	merchants.each do |m|
		puts "info@#{m.gsub(" ", "_").downcase.chomp}.com"
		if merchant = Merchant.create!(
			:name => m, 
			:address => "123 Test St.",
			:city => "Olympia",
			:state => "WA",
			:zip => "98501",
			:logo => "test.jpg",
			:email => "info@#{m.gsub(" ", "").downcase.chomp}.com"
		)
			puts "Merchant created: #{m}"
		else
			puts "Something went wrong creating #{m}"
		end
	end
	
	Category.delete_all
	
	categories = %w(Coffee\ Shops Family Automotive Electronics Beauty Furniture)
	
	categories.each do |c|
		if category = Category.create!(
			:name => c
		)
			puts "Category created: #{c}"
		else
			puts "Something went wrong creating #{c}"
		end
	end
end