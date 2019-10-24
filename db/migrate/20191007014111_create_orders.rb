class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :fullname
      t.string :email
      t.string :phone
      t.string :pickup
      t.integer :quantity
      t.datetime :order_date
      t.date :pickup_date
      t.date :payed_date
      t.datetime :email_confirmation_sent
      t.date :email_pickup_sent
      t.decimal :total_price

      t.timestamps
    end
  end
end
