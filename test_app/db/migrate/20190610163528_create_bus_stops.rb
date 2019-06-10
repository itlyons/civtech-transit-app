class CreateBusStops < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_stops do |t|
      t.float :stop_id
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :routes_served

      t.timestamps
    end
  end
end
