class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :buyer_id
      t.integer :quantity
      t.boolean :active
      t.belongs_to :user
      t.timestamps
    end
  end
end
