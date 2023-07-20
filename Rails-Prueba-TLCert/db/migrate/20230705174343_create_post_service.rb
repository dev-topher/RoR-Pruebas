class CreatePostService < ActiveRecord::Migration[7.0]
  def change
    create_table :post_services do |t|

      t.string :evidence, null: false
      t.references :maintenance, foreign_key: true

      t.timestamps
    end
  end
end
