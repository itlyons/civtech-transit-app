class CreateBusStops < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_stops do |t|
      t.string :title
      t.text :address
      t.float :latitude
      t.float :longitude
      t.string :visited_by

      t.timestamps
    end
  end
end
