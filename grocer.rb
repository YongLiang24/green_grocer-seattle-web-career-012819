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
  hash_food = {}
  cart.each do |key, info|
    coupons.each do |coupon|
      if key == coupon[:item] && info[:count] >= coupon[:num]
        info[:count] =  info[:count] - coupon[:num]
        if hash_food["#{key} W/COUPON"]
          hash_food["#{key} W/COUPON"][:count] += 1
        else
          hash_food["#{key} W/COUPON"] = {:price => coupon[:cost], :clearance => info[:clearance], :count => 1}
        end
      end
    end
    hash_food[key] = info
  end
  return hash_food
end

def apply_clearance(cart)
  # code here
  clearance_cart = {}
  # code here	  # code here
  cart.each do |food, info|
    clearance_cart[food] = {}
    if info[:clearance] == true
      clearance_cart[food][:price] = info[:price] * 4 / 5
    else
      clearance_cart[food][:price] = info[:price]
    end
    clearance_cart[food][:clearance] = info[:clearance]
    clearance_cart[food][:count] = info[:count]
  end
  clearance_cart
end

def checkout(cart, coupons)
  # code here

end
