class CreateBusStopLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_stop_locations do |t|
      t.string :Street
      t.string :Cross_street
      t.string :Direction
      t.string :City
      t.string :Public_name
      t.integer :Point_X
      t.integer :Point_Y

      t.timestamps
    end
  end
end
