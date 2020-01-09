$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
   movie_index = 0
   movies = director_data[:movies]
   total_gross_for_director = 0

    while movie_index < movies.length do
     total_gross_for_director += movies[movie_index][:worldwide_gross]
     movie_index += 1
   end
   total_gross_for_director
     end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  i = 0
   while i < nds.size do
     director = nds[i]
     result[director[:name]] = gross_for_director(director)
     i += 1
   end
   result
end


