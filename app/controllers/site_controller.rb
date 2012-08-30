class SiteController < ApplicationController
  def index
  	@offers = []
  	if params[:category] && category = Category.find(params[:category])
  			@offer << category.deals if category
  			@offer << category.coupons if category
  	else
  		@offers << Deal.all
  		@offers << Coupon.all
  	end
  end
end
