class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :date
      t.integer :time
      t.text :notes

      t.timestamps
    end
  end
end
