$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  inner_index = 0
  total = 0
while inner_index < director_data[:movies].count do
  grosses = director_data[:movies][inner_index][:worldwide_gross]
  inner_index += 1
  total += grosses 
  end
total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
 
 result = {}
 inner_index = 0
 while inner_index < nds.count do
  result[nds[inner_index][:name]] = gross_for_director(nds[inner_index])
  inner_index += 1
 end
  
  result
end
