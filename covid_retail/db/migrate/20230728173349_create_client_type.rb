class CreateClientType < ActiveRecord::Migration[7.0]
  def change
    create_table :client_types do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
