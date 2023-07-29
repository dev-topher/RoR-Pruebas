class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :total_payment, null: false
      t.date :order_date, null: false
      t.references :product, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :payment_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
