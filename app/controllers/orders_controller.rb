class OrdersController < InheritedResources::Base
	before_filter :authenticate_user!

	def index
		@orders = current_user.orders
	end

	def show
		@order = current_user.orders.find(params[:id])
	end

	def create
		@order = current_user.orders.build(params[:order])
		@order.ip_address = request.remote_ip
		@order.deal = Deal.find(params[:deal_id])
		if @order.save
			if @order.purchase
				redirect_to success_order_path @order
			else
				redirect_to failure_order_path @order
			end
		else
			render 'new'
		end
	end

	def failure
		@order = current_user.orders.find(params[:id])
	end

	def success
		@order = current_user.orders.find(params[:id])
	end

end
