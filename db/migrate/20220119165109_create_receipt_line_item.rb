class CreateReceiptLineItem < ActiveRecord::Migration[6.1]
  def change
    create_table :receipt_line_items do |t|
      t.integer :receipt_id
      t.integer :food_id
    end 
  end
end
