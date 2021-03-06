def find_item_by_name_in_collection(name, collection)
  collection.find{|hash| hash[:item] == name}
end  

def consolidate_cart(cart)
  new_cart = []
  cart.each{|hash|
    if hash[:count]
      hash[:count]+=1
    else
      hash[:count] = 1
      new_cart << hash
    end  
  }
  new_cart
end  

=begin
OLD SOLUTION

def find_item_by_name_in_collection(name, collection)
  i = 0
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    end  
    i += 1
  end 
  
end

def consolidate_cart(cart)
  new_cart = []
  i = 0
  while i < cart.length do
    new_cart_item = find_item_by_name_in_collection(cart[i][:item], new_cart)
    if new_cart_item
      new_cart_item[:count] += 1
    else
      cart[i][:count] = 1
      new_cart << cart[i]
    end   
  i += 1
  end
  new_cart
end

=end