class OrdersController < InheritedResources::Base
	before_filter :authenticate_user!


	def create
		@order = current_user.orders.create(params[:order])
		@order.user_id = current_user.id
		if @order
			redirect_to @order
		end
	end

end
