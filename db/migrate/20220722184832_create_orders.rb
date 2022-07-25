class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :user_ph
      t.string :items

      t.timestamps
    end
  end
end
