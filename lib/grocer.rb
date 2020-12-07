require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |hash|
    hash.each do |key, value|
      if value == name
        return hash
      end
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = cart.each_with_object([]) do |hash, new_cart|
    hash[:count] = 1
    hash.each do |key, value|
      if !find_item_by_name_in_collection(value, new_cart)
        new_cart.push(hash)
      else
        new_cart.each do |details|
          if details[:item] == value
            details[:count] += 1
          end
        end
      end
    end
  end
end


  