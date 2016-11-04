def pet_shop_name(hash_name)
  return hash_name[:name]
end

def total_cash(hash_name)
  return hash_name[:admin][:total_cash]
end

def add_or_remove_cash(hash_name, added_cash)
  current_cash_value = hash_name[:admin][:total_cash]
   return hash_name[:admin][:total_cash] = (current_cash_value+added_cash)
end

def pets_sold(hash_name)
  return hash_name[:admin][:pets_sold]
end