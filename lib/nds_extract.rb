require 'pp'
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  
  row_index = 0
  while row_index < nds.length do
    result[nds[row_index][:name]] = gross_for_director(nds[row_index])
    row_index += 1
  end
  
 return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0
  worldwide_gross = 0
  while row_index < director_data[:movies].length do
    worldwide_gross += director_data[:movies][row_index][:worldwide_gross]
    row_index += 1
  end
  worldwide_gross
end
