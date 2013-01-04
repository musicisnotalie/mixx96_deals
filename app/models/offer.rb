class Offer < ActiveRecord::Base
  #relationships
  belongs_to :merchant
  has_many :categorizations
  has_many :categories, :through => :categorizations  

  #uploaders
  mount_uploader :image, ImageUploader

  #SLUGS
  extend FriendlyId
  friendly_id :name, use: :slugged

  # def active_offers
  # 	@offer = Offer.where("end_date >= ?", Date.today)
  # end
end
