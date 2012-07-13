class SiteController < ApplicationController
  def index
  	@offers = []
  	@offers << Deal.all
  	@offers << Coupon.all
  end
end
