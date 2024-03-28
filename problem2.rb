require 'httparty'

response = HTTParty.get("https://v6.exchangerate-api.com/v6/6b62e097c2fc13273a272919/latest/USD")

source_currency = 'USD'
target_currency = 'EUR'
amount = 100

puts "100 USD would convert into " + (amount * response['conversion_rates']['EUR']).round(2).to_s + " EUR"


