require './something.rb'

class Stuff
  # ...
  # now we can use the Some  thing class
  @@shopping_cart = []
  @@total_cost_notax = 0
  @@total_cost_tax = 0.0


  def cart

  end

  def add_item=(item)
    @@shopping_cart << item
    return item
  end

  def shopping_cart_list
      cost_notax = 0.0
      cost_tax = 0.0
      @@shopping_cart.each do |item|
        puts "#{item.name} #{item.base_price} #{item.tax_rate}\n"
        cost_notax += item.base_price
        cost_tax += (item.base_price + (item.base_price * (item.tax_rate/100.0)))

      end
      @@total_cost_notax = cost_notax
      @@total_cost_tax = cost_tax
  end

  def total_cost_before_tax
    return @@total_cost_notax
  end

  def total_cost_after_tax
    return @@total_cost_tax
  end


  # thing.do_it
  # ...

  def calculate

  end
end

item_1 = Something.new('rice',10, 19)
item_2 = Something.new('chips',2, 6)
item_3 = Something.new('banana',3, 5)
item_4 = Something.new('pizza',10, 18)
item_5 = Something.new('beer',2, 6)
item_6 = Something.new('apple',3, 2)
item_7 = Something.new('bread',1, 1)

st1 = Stuff.new

st1.add_item=(item_1)
st1.add_item=(item_4)
st1.add_item=(item_5)

st1.shopping_cart_list

p st1.total_cost_before_tax
p st1.total_cost_after_tax
# puts "#{st1.shopping_cart_list}"
