
require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction
    
    def initialize(discount=0) 
        #sets an instance variable @total on initialization to zero
        #binding.pry 
        @total = 0 
        @discount = discount 
        @items = []
        @last_item = 0
    end 

    def total 
         @total 
     end 

     def discount
        @discount 
     end 

     def add_item(title, price, quantity=1)

             @total += price * quantity 
             quantity.times do @items << title
             end 
             @last_item = price * quantity 
     end 

     def apply_discount 
        #binding.pry 
        if @discount > 0
            @discount = @discount/100.to_f
            @total -= @total * @discount 
            return "After the discount, the total comes to $#{@total.floor}."
        else 
            return "There is no discount to apply."
        end 
     end 


     def items
        @items
     end 

     def void_last_transaction
        @total -= @last_item 
     end 

end 