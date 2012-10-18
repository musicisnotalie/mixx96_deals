class SiteController < ApplicationController
  def index
    if params[:category]
      @category = Category.find(params[:category])
      @offers = @category.offers.order(:priority).all
    else
      @offers = Offer.order(:priority).all
    end
  end
end
