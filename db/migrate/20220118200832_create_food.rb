class CreateFood < ActiveRecord::Migration[6.1]
  def change
    create_table :food do |t|
      t.string :food_name
      t.integer :price
    end
  end
end
