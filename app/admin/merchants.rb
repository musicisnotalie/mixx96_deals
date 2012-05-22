ActiveAdmin.register Merchant do
	filter :name

	form do |f|
		f.inputs "Details" do
			f.input :name
			f.input :homepage
			f.input :logo, :as => :file
			#f.input :logo_cache, :as => :hidden
		end

	  f.inputs "Address" do
	    f.input :address
	    f.input :address2
	    f.input :city
	    f.input :state, :as => :select, :collection => us_states, :selected => "WA"
			f.input :zip
			f.input :map_link, :as => :url
	  end
	  f.inputs "Contact Information" do
	    f.input :phone_number
	    f.input :email
	  end
	  f.buttons
	end  
end
