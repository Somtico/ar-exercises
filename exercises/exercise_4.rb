require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output name and annual revenue of each men's store
puts "Stores carrying men's apparel:"
@mens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and have annual revenue less than $1M
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1_000_000)

# Output name and annual revenue of each women's store under $1M
puts "Stores carrying women's apparel with less than $1M in annual revenue:"
@womens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end