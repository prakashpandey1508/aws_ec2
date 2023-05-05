class AddStatusToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :status, :boolean, default: false
  end
end
