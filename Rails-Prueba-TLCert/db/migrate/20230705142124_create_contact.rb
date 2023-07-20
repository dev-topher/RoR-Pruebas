class CreateContact < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :number, null: false
      t.text :consulta, null: false

      t.timestamps
    end
  end
end
