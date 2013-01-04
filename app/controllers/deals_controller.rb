class DealsController < ApplicationController
  def show
  	@deal = Deal.find(params[:id])
  end

  def feedback
    
  end

  # def active_deals
  # 	scope(:find => where(:end_date >= Date.today))
  # end
end
