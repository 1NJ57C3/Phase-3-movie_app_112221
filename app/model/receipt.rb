class Receipt < ActiveRecord::Base
    has_many :receipt_line_items
    has_many :foods, through: :receipt_line_items

    def calculate_total
        #instance method
        #Should set the recipts total to the price sum of every food item related to that receipt.
        self.total = self.foods.sum(:price)
        self.save
    end 
end 