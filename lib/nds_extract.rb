$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # puts director_data

   movie_index = 0
   total = 0
  while movie_index < director_data[:movies].length do
    total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index +=1  
  end
  
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
  
   result[nds[director_index][:name]] = gross_for_director(nds[director_index])
   
   director_index += 1
  end
 result
end
