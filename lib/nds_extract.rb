$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  i = 0 
  total = 0
  while i < director_data[:movies].length do 
   total +=  director_data[:movies][i][:worldwide_gross]
   i += 1 
 end 
   total 
end


def directors_totals(nds)
 i = 0 
 result = {} 
 while i < nds.length do 
   directors = nds[i][:name]
   total = gross_for_director(nds[i])
   i += 1 
   result[directors] = total
  end 
  result 
end
