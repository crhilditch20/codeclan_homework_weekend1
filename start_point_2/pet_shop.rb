
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

def increase_pets_sold(hash_name, number_pets_sold)
  current_pets_sold = hash_name[:admin][:pets_sold]
  return hash_name[:admin][:pets_sold] = (current_pets_sold+number_pets_sold)
end

def stock_count(hash_name)
  return hash_name[:pets].length
end

def pets_by_breed(hash_name, given_breed)
  breeds_found_array = []
  pets = hash_name[:pets]
  for pet in pets
    if (pet[:breed] == given_breed)
      breeds_found_array << pet
    end
  end
  return breeds_found_array
end

def find_pet_by_name(hash_name, given_pet_name)
  for pet in hash_name[:pets]
    if pet[:name] == given_pet_name
      return pet
    end
  end
    return nil
end

def remove_pet_by_name(hash_name, given_pet_name)
  pet_name = nil
  for pet in hash_name[:pets]
    if pet[:name] == given_pet_name
      pet_name = pet
    end
  end
  return pet_name.delete(:name)
end

def add_pet_to_stock(hash_name, new_pet_hash)
  hash_name[:pets].push(new_pet_hash)
end

# def customer_pet_count(customer_array)
#   for customer in customer_array
    
#   end
# end
