def consolidate_cart(cart)
  # adds a count of one to each item when there are no duplicates
  consolCart = {}

   cart.each do |foodHash|
    foodHash.each do |food, foodData|
      consolCartData = consolCart[food]
      if consolCartData == nil
        consolCartData = {}
        consolCart[food] = foodData
        consolCart[food][:count] = 1
      else
        consolCart[food][:count] += 1
      end
    end
  end
  consolCart
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
