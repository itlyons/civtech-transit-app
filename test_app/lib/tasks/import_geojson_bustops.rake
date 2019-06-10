namespace :import_geojson_bustops do
task :add_bus_data => :environment do

  file = open("#{Rails.root}/db/bus_stop_data/CTA_BusStops.geojson")

  json = file.read
  parsed = JSON.parse(json)

  parsed["features"].each do |record|
    stop = BusStopLocation.new

    puts record["properties"]["STREET"]
    stop.Street = record["properties"]["STREET"]

    puts record["properties"]["CROSS_ST"]
    stop.Cross_street = record["properties"]["CROSS_ST"]

    puts record["properties"]["DIR"]
    stop.Direction = record["properties"]["DIR"]

    puts record["properties"]["CITY"]
    stop.City = record["properties"]["CITY"]

    puts record["properties"]["PUBLIC_NAM"]
    stop.Public_name = record["properties"]["PUBLIC_NAM"]

    puts record["geometry"]["coordinates"][1] #latitude
    stop.Point_X = record["geometry"]["coordinates"][1]

    puts record["geometry"]["coordinates"][0] #longitude
    stop.Point_Y = record["geometry"]["coordinates"][0] #latitude

    stop.save
  end
end

end
