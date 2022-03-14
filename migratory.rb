#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'migratoryBirds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#


    def migratoryBirds(arr)
    birds = [0,0,0,0,0,0]
    for i in arr do 
        birds[i] += 1 
    end
    return birds.index(birds.max)
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

fptr.write result
fptr.write "\n"

fptr.close()
