ActiveAdmin.register Coupon do
	filter :name
	filter :merchant
	filter :categories
	
	form do |f|
		f.inputs do 
			f.input :merchant
			f.input :name
			f.input :description
			f.input :printable_file, :as => :file
			f.input :categories
		end
    f.buttons
  end  
  
  sidebar :need_help? do
    "Need help? Email us at hello@pignite.com"
  end 
  
end
