class SiteController < ApplicationController
  def index
    if params[:category]
      @category = Category.find(params[:category])
      @offers = @category.offers.order("featured DESC, priority ASC")
    else
      @offers = Offer.order("featured DESC, priority ASC").where("end_date >= ?", Date.today)
    end
  end
end
