require 'httparty'

response = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events?apikey=ImNvtHFrbOgi6BLNHiemQPsOIJfwkGKe&city=Memphis")

events = response['_embedded']['events']
events.each do |event|
    puts "Event: #{event['name']}"
    puts "Venue: #{event['_embedded']['venues'].first['name']}"
    puts "Date: #{event['dates']['start']['localDate']}"
    puts "Time: #{event['dates']['start']['localTime']}"
    puts ""
end
    
