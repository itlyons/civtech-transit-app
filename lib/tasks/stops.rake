
namespace :load_bus_stops do
	task :load_stops => :environment do


require 'csv'



Path = Rails.root.join('lib', 'seeds', 'amended_stops.csv')
puts Path
csv_text = File.read(Path)
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')



csv.each do |row|
    t = BusStop.new
    t.stop_id = row['OBJECTID']
    t.name = row['PUBLIC_NAM']
    t.latitude = row['POINT_Y']
    t.longitude = row['POINT_X']
    t.routes_served = row['ROUTESSTPG']
    t.direction = row['DIR']
    t.save
    puts "#{t.stop_id} saved"
end

puts "There are now #{BusStop.count} rows in the transactions table"
	end
end