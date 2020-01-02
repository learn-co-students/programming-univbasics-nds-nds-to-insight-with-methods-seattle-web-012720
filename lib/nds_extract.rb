$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_index = 0
  gross = 0
  while movies_index < director_data[:movies].length do
    gross += director_data[:movies][movies_index][:worldwide_gross]
    movies_index += 1
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0 
  
  while row_index < nds.length do
    director_data = nds[row_index]
    director_name = director_data[:name]
    result[director_name] = gross_for_director(director_data)
    row_index += 1
  end
  result
end