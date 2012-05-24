ActiveAdmin.register Deal do
	menu :priority => 1
	
	filter :name
	filter :merchant
	filter :categories
	
	index :as => :block do |deal|
		div :for => deal do
    	div do 
	    	link_to(image_tag(deal.image.url), admin_deal_path(deal))
	    end
	    div do
   	  	h2 auto_link(deal.name)
   	  end
	  end
  end
	
	
	form do |f|
		f.inputs do
			f.input :merchant
			f.input :name
			f.input :tagline
			f.input :image, :as => :file
			f.input :description
			f.input :normal_price, :as => :string
			f.input :price, :as => :string
			f.input :quantity, :as => :string
			f.input :sale_end_date, :as => :date
			f.input :deal_expiration_date, :as => :date
			f.input :categories, :as => :check_boxes
		end
	  f.buttons
	end  
	
	
	
	
	sidebar :need_help? do
    "Need help? Email us at hello@pignite.com"
  end 
	  
end
