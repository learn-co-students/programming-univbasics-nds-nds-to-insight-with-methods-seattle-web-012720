$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  director_data[:movies].length.times do |array|
    total += director_data[:movies][array][:worldwide_gross]
  end
  return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.length.times do |director_data|
    name = nds[director_data][:name]
    result[name] = gross_for_director(nds[director_data])
  end
  return result
end
