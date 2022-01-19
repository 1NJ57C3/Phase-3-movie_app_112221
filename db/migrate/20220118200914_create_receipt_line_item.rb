class CreateReceiptLineItem < ActiveRecord::Migration[6.1]
  def change
    create_table :receipt_line_item do |t|
      t.references :receipt
      t.references :food
    end
  end
end
