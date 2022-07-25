class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :cost
      t.string :food_type
      t.boolean :available
      t.string :food_img

      t.timestamps
    end
  end
end
