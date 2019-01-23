def consolidate_cart(cart)
  # adds a count of one to each item when there are no duplicates
  hash_cart = {}
   cart.each do |info|
    info.each do |key, value|
      data_cart = hash_cart[key]
      if data_cart == nil
        data_cart = {}
        hash_cart[key] = value
        hash_cart[key][:count] = 1
      else
        hash_cart[key][:count] += 1
      end
    end
  end
  return hash_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
