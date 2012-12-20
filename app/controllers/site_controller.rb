class SiteController < ApplicationController
  def index
    if params[:category]
      @category = Category.find(params[:category])
      @offers = @category.offers.order("featured DESC, priority ASC").all
    else
      @offers = Offer.order("featured DESC, priority ASC").all
    end
  end
end
