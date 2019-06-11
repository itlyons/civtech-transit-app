class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :complaint
      t.string :visited_by

      t.timestamps
    end
  end
end
