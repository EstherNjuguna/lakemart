class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :byer_id
      t.integer :product_id
      t.integer :quantity
      t.integer :cash_paid
      t.string :status,default:0
t.belongs_to :user
      t.timestamps
    end
  end
end
