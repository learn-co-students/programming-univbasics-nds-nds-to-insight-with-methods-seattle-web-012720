$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total=0 
column_index=0
while column_index<director_data[:movies].length do 
total+=director_data[:movies][column_index][:worldwide_gross]
column_index+=1
end
total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result={}
  special_index=0 
  while special_index<nds.length do
  all_director= nds[special_index]
  result[all_director[:name]] = gross_for_director(all_director)  
  special_index+=1
end
result
end