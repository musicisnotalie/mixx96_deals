if Rails.env == 'development'
    ActiveMerchant::Billing::Base.mode = :test
    ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
      :login     => 'hello_1342797905_biz_api1.pignite.com',
      :password  => '1342797941',
      :signature => 'Ahm1vgYIPu7vIRWa7xyLh-u9hQ9pAGkWwDW-hb4eLEgT6YzIUDiMPoFH'
    )
elsif Rails.env == 'test'
    ActiveMerchant::Billing::Base.mode = :test
    ::GATEWAY = ActiveMerchant::Billing::BogusGateway.new
elsif Rails.env == 'production'
    ActiveMerchant::Billing::Base.mode = :test
    ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
      #:login     => 'seller12341234zxcv.foobar.com',
      #:password  => 'pasword',
      #:signature => 'abc123'
    )
end