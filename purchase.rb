require 'rubygems'
require 'active_merchant'

ActiveMerchant::Billing::Base.mode = :test

gateway = ActiveMerchant::Billing::PaypalGateway.new(
  :login => "msprio_1288037301_biz_api1.gmail.com",
  :password => "4EPH3XFBLV55GRWV",
  :signature => "AFcWxV21C7fd0v3bYYYRCpSSRl31AQxc.qwy9pzjJ7g603Ib.oPW9kmN"
)

credit_card = ActiveMerchant::Billing::CreditCard.new(
  :type               => "visa",
  :number             => "4024007148673576",
  :verification_value => "123",
  :month              => 1,
  :year               => Time.now.year+1,
  :first_name         => "Ryan",
  :last_name          => "Bates"
)

if credit_card.valid?
  response = gateway.purchase(1000, credit_card, :ip => "127.0.0.1")
  if response.success?
    puts "Purchase complete!"
  else
    puts "Error: #{response.message}"
  end
else
  puts "Error: credit card is not valid. #{credit_card.errors.full_messages.join('. ')}"
end
