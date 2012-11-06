ActiveAdmin.register Category do
	menu :priority => 4

  form do |f|
    f.inputs do
      f.input :name
    end
    f.buttons
  end


	sidebar :help do
    "Need help? Email us at hello@pignite.com"
  end  
end
