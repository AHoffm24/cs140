#Adam Hoffman, CS140-1001, Assignment 4
#Program is an example of how to use comparison operators and selection statments
#The goal is to give shipping estimates based off of weight for customers.
#Email Hoffma4@unlv.nevada.edu
#Program Reads in weight of the users item.
#input: Weight in pounds ( float )
#output: ask the customer to input the wieght in pounds, then print the shipping
#        cost in us dollars with precion of 2 on the float number

puts "Enter the weight in pounds:" #printing statment for user to answer
weight = gets.chomp   # reading in weight from users
weight = weight.to_f #changing weight into a floats
if weight < 2.0 # weight less than 2 pounds
      cost = weight * 3.25 # multiplying weight by price per pound to get total cost
      cost = "%4.2f" % cost #found
      puts "the shipping cost is $" + cost.to_s + '.'

elsif weight >= 2.0 && weight <= 4.9 # weight between 2 and 4.9 pounds
      cost = weight * 3.00 # multiplying weight by price per pound to get total cost
      cost = "%4.2f" % cost #using kernal module %4.2f = width 4 with 2 precision of a floating point number
      puts "the shipping cost is $" + cost.to_s + '.'

elsif weight >= 5.0 && weight <= 9.9 #weight between 5 and 9.9 pounds
      cost = weight * 2.75 # multiplying weight by price per pound to get total cost
      cost = "%4.2f" % cost  #using kernal module %4.2f = width 4 with 2 precision of a floating point number
      puts "the shipping cost is $" + cost.to_s + '.'

elsif weight >= 10.0 && weight <= 24.9 #package between 10 and 24.9 pounds
      cost = weight * 2.50 # multiplying weight by price per pound to get total cost
      cost = "%4.2f" % cost  #using kernal module %4.2f = width 4 with 2 precision of a floating point number
      puts "the shipping cost is $" + cost.to_s + '.'
elsif # package weighs 25 pounds or more
      puts "the shipping cost is $" + '75.00'+ '.' #always 75 dollars when above 25 pounds
end #end of else if statment
