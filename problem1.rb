require 'httparty'

total_temperature = 0.0

for i in 1..5
    response = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=London&appid=a750371b263a12795168a88c1622a42c&units=metric")
    total_temperature += response['main']['temp']
    sleep(60)
end

average_temperature = total_temperature / 5
puts "The average tempature in London over the last five minutes is " + average_temperature.round(2).to_s