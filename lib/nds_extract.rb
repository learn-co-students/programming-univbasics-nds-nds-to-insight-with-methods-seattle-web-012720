$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  total_gross_profit = 0
  movie_index = 0
  while movie_index < director_data[:movies].length do
    total_gross_profit += director_data[:movies][movie_index][:worldwide_gross]  
    movie_index += 1
  end
  return total_gross_profit
end

def directors_totals(nds)
  result = {}
  director_index = 0
  movie_index = 0
  while director_index < nds.length do
    total = 0
    while movie_index < nds[director_index][:movies].length do
      total += nds[director_index][:movies][movie_index][:worldwide_gross]
      result[nds[director_index][:name]] = total
      movie_index += 1
    end
    movie_index = 0
    director_index += 1  
  end
  return result
  nil
end
