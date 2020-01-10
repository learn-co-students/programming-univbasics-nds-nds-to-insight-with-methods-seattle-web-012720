$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  director_gross = 0
  while (director_data[:movies][movie_index]) do
    director_gross = director_gross + director_data[:movies][movie_index][:worldwide_gross]
    movie_index+=1
  end
  director_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index =0
  while(nds[director_index]) do
    result[nds[director_index][:name]] = gross_for_director(nds[director_index])
    director_index+=1
  end
  result
end
