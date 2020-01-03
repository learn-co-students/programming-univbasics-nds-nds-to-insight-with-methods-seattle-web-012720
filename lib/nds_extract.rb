$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

#pp directors_database

#NDS is an array containing a hash. 
  #The hash is a key pair of :names for directors and the :movies they've made.
    #:movies is an array of hashes.
      #each hash  is a different movie with a 
                                              #:title
                                              #:studio
                                              #:worldwide_gross
                                              #:release_year

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0 
  index = 0 
  while index < director_data[:movies].length do 
    total += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end 
  p total
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
  p result
end