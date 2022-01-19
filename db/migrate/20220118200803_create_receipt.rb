class CreateReceipt < ActiveRecord::Migration[6.1]
  def change
    create_table :receipt do |t|
      t.string :customer_name
    end
  end
end
