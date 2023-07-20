class CreateMaintenance < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|

      t.integer :type_maintenance, null: false
      t.integer :status, null: false, default: 1

      t.references :equipements, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
