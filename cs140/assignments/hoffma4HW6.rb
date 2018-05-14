#Adam Hoffman, CS140-1001, Assignment 6
#Program is expected to generate 100 random numbers and store them in an array.
#you will then find the sum, avg, standard Deviation, min and maximum and store
#those values in hash and print the values found directly from the hash table.
#Email Hoffma4@unlv.nevada.edu
#input: none
#output: Expected to output the sum, average, min, max, and standard deviation
#of a number set of 100 random numbers between 1-1000 in a organized manner
#by use of interating the hash table to print the final values

numArray = [] #an array of 100 random numbers
N = 100 #constant N is being used to store total number of items in array
min = 1000 #used to find the minimum number in the array
           # set at 1000 to ensure there must be anumber smaller
max = 0 #used to find the maximum number in array
        #set at 0 to ensure it will always find a number larger
sum = 0 #used to store the sum of all the numbers in the Array
avg = 0 #declaring variables for organization used for average
sd  = 0 #declaring sd a variable for oranzation, used for standard deviation

                # started at zero for ease of using i when using numArray
for i in 0..N-1 # from 0 to 99 or a simple way to look at it, a loop of a 100

  numArray << 1 + rand(1000) #filling the array with rand num betwen 1 - 1000
  sum += numArray[i] #finding the sum to save from needing another loop

  if numArray[i] <= min #checks each number to ensure min is found
    min = numArray[i] #number is smaller than whats stored in min, changes its value
  end #end if

  if numArray[i] >= max #checks each number to ensure max is found
    max = numArray[i] #max found changes value
  end #end if
end #end for-loop

avg = sum / N #finding the average by dividing the sum by total number of items

for i in 0..N-1 #using another loop to find sum of all items, i = 1 to n(xi - avg)^2

  sd += (numArray[i] - avg)**2 #equivelent to (x1 - average)^2 +...(xn -average)^2

end #end for-loop

sd = (sd/N)**0.5 #Now devides sum from above by n and then finds the square root
sd = sd.to_i #changes Std_dev into an int from a double

#creating hash table to store the value found above
stats = { "sum" => sum, "avg" => avg,"std_dev"=> sd, "min" => min, "max" => max}

#printing expected output
puts "Generating 100 random numbers..."
puts "Here are the results:"

for k,v in stats #using the values inside of the hash to print its key and that keys value
    puts "#{k}: #{v}" #prints every item in hash table stats
end
