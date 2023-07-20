class CreateDetailMaterial < ActiveRecord::Migration[7.0]
  def change
    create_table :detail_materials do |t|

      t.references :maintenance, foreign_key: true
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
