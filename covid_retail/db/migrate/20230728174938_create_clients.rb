class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.references :client_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
