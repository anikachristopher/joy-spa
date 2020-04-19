class AddColumnToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :client_id, :integer
    add_column :appointments, :service_id, :integer
  end
end
