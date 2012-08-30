require 'active_merchant'


# Send requests to the gateway's test servers
ActiveMerchant::Billing::Base.mode = :test

# Create a new credit card object
credit_card = ActiveMerchant::Billing::CreditCard.new(
  :number     => '4021096619609196',
  :month      => '8',
  :year       => '2012',
  :first_name => 'Ronald',
  :last_name  => 'Reagan',
  :verification_value  => '123',
  :brand       => 'visa'
)

purchase_options = {
  :ip => '127.0.0.1'
}

if credit_card.valid?
  # Create a gateway object to the TrustCommerce service
  gateway = ActiveMerchant::Billing::PaypalGateway.new(
  :login     => 'hello_1342797905_biz_api1.pignite.com',
  :password  => '1342797941',
  :signature => 'Ahm1vgYIPu7vIRWa7xyLh-u9hQ9pAGkWwDW-hb4eLEgT6YzIUDiMPoFH'
   )

  # Authorize for $10 dollars (1000 cents)
  response = gateway.authorize(1000, credit_card, purchase_options)
  
  puts "*" * 100
  puts "repsonse from authorize: #{response.inspect}"
  puts "*" * 100

  if response.success?
    # Capture the money
    purchase = gateway.capture(1000, response.authorization)
    puts purchase
  else
    raise StandardError, response.message
  end
end