ActiveAdmin.register Coupon do
	menu :priority => 2

	filter :name
	filter :merchant
	
	index do
		column :merchant
		column :name
		column :expiration_date do |coupon|
			coupon.expiration_date.strftime("%B %d, %Y")
		end
		column :printable_file do |coupon|
			link_to "Download/View File", coupon.printable_file.url
		end
		default_actions
	end
	
	form do |f|
		f.inputs do 
			f.input :merchant, :required => true, :hint => "Choose the merchant this coupon belongs to."
			f.input :name
			f.input :description
			f.input :expiration_date, :as => :date
			f.input :printable_file, :as => :file, :hint => "Must be a PDF"
			f.input :categories, :as => :check_boxes
		end
    f.buttons
  end  
  
  sidebar :need_help? do
    "Need help? Email us at hello@pignite.com"
  end 
  
end
