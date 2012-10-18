class Order < ActiveRecord::Base
	#relationships
	belongs_to :deal
	belongs_to :user
	has_many :transactions, :class_name => "OrderTransaction", :dependent => :destroy
  has_one :merchant, :through => :deal

	#mass-assigment
  attr_accessible :address, :address2, :city, :state, :zip, :card_number, :card_verification, 
  :first_name, :last_name, :card_type, :card_expires_on #(1i), card_expires_on(2i), card_expires_on(3i)

  #virtual things
  attr_accessor :card_number, :card_verification
  
  #validations
  validates_presence_of :address, :city, :state, :zip,  
  :first_name, :last_name, :card_type, :card_expires_on
  validate :validate_card, :on => :create

  #scopes
  #scope :complete, lambda { where :completed => true }
  #scope :incomplete, lambda { where :completed => false }
  #scope :all, lambda { all }
  
  #methods
  def purchase
    response = ::GATEWAY.purchase(price_in_cents, credit_card, purchase_options)
    transactions.create!(:action => "purchase", :amount => price_in_cents, :response => response)
    response.success?
  end
  
  def price_in_cents
    (deal.price*100).round
  end

  def complete!
  	toggle!(:completed)
  	logger.debug "****************** ORDER MARKED COMPLETED ****************"
  end

  private
  
  def purchase_options
    {
      :ip => ip_address,
      :billing_address => {
        :name     => "#{first_name} #{last_name}",
        :address1 => address,
        :city     => city,
        :state    => state,
        :country  => "US",
        :zip      => zip
      }
    }
  end
  
  def validate_card
    unless credit_card.valid?
      credit_card.errors.each do |k,v|
      	logger.debug "*" * 50
      	logger.debug "#{k} => #{v}"
      	logger.debug "*" * 50
      	case k
      		when  "year" || "month"
      			errors.add(:card_expires_on, v.join)
        	when "number"
        		errors.add(:card_number, v.join)
        	when "brand"
        		errors.add(:card_type, v.join)
        end
      end
    end
  end
  
  def credit_card
    @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
      :type               => card_type,
      :number             => card_number,
      :verification_value => card_verification,
      :month              => card_expires_on.month,
      :year               => card_expires_on.year,
      :first_name         => first_name,
      :last_name          => last_name
    )
  end
end