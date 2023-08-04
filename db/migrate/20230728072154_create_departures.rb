class CreateDepartures < ActiveRecord::Migration[6.1]
  def change
    create_table :departures do |t|
      t.time :start_time
      t.time :end_time
      t.date :date
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
