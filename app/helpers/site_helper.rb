module SiteHelper
  def offer_class(offer)
    case offer.type
      when "Deal"
        return "deal"
      when "Coupon"
        return "coupon"
      when "Ad"
        return "ad"
      when "Event"
        return "event"
    end
  end

  def offer_icon(offer)
    case offer.type
      when "Deal"
        return "icon-bullhorn"
      when "Coupon"
        return "icon-certificate"
      when "Ad"
        return "icon-map-marker"
      when "Event"
        return "icon-calendar"
    end
  end
end
