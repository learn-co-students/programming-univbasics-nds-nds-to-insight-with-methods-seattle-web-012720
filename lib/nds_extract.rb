$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_index = 0
  director_total = 0
  directors_grosses = {}
  
  while director_index < director_data[:movies].length do
    current_director_name = director_data[0].to_s
    director_total += director_data[:movies][director_index][:worldwide_gross]
    director_index += 1
   #binding.pry
  end
return director_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  directors_index = 0
  total_gross = 0
  current_total = 0
  
  while directors_index < directors_database.length do
    movies_index = 0
    while movies_index < directors_database[directors_index][:movies].length do
      current_total += directors_database[directors_index][:movies][movies_index][:worldwide_gross]
      currentname = (directors_database[directors_index][:name]).to_s
      total_gross += directors_database[directors_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
      result[currentname] = current_total
      ##binding.pry
      end
    current_total = 0  
    directors_index += 1
    end
result[:total] = total_gross
return result
end
