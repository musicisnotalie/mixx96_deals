if Rails.env == 'development'
    ActiveMerchant::Billing::Base.mode = :test
    ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
      :login     => 'porky_1348765392_biz_api1.pignite.com',
      :password  => '1348765456',
      :signature => 'A4d4is05hkUKLT76W9vNArfuk41qAP1cSB7opbpY8dx66ZZ3BT2B7-IA'
    )
elsif Rails.env == 'test'
    ActiveMerchant::Billing::Base.mode = :test
    ::GATEWAY = ActiveMerchant::Billing::BogusGateway.new
elsif Rails.env == 'production'
    ActiveMerchant::Billing::Base.mode = :test
    ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
      :login     => 'porky_1348765392_biz_api1.pignite.com',
      :password  => '1348765456',
      :signature => 'A4d4is05hkUKLT76W9vNArfuk41qAP1cSB7opbpY8dx66ZZ3BT2B7-IA'
    )
end