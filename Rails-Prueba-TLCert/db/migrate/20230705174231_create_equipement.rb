class CreateEquipement < ActiveRecord::Migration[7.0]
  def change
    create_table :equipements do |t|

      t.integer :type_equipement, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
