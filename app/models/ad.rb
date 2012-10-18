class Ad < Offer
    attr_accessible :name, :tagline, :description, :normal_price, :price, :start_date, :end_date, :expiration_date, :quantity, :image, :merchant_id, :category_ids
end