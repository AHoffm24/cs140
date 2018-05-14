#Adam Hoffman
#Module Assignment 8
#purpose of the program is read in, store and print a selected amount of cars
#that the user desires.
#input is expected to ask number of cars to store, the make, model and year of
#each car from the user
#output is expected to print each car in a line first by its year, then make,
#then model
# DEFINE YOUR CAR CLASS HERE
class Car

  def set_make(m) #stores make into instance make
      @make = m  #storing value
  end #end set make


  def set_model(mod) #stores model into instance model
      @model = mod #storing value
  end #end set model

  def set_year(y) #store year into instance year
      @year = y #storing value
  end #end set year

  def get_make() #returns variable make from the store previous value
      return @make #returns make
  end #end get make

  def get_model()
      return @model #returns model
  end #end get model

  def get_year() #returns variable year from the stored previous value
      return @year #returns year
  end #end get year

end #end of class car
# MAIN PORTION OF PROGRAM

# create empty array
array_of_cars = Array.new

# prompt for and get number of cars
print "How many cars do you want to create? "
  num_cars = gets.to_i

# create that many cars
for i in 1..num_cars
    # get the make, model, and year
    puts
    print "Enter make for car #{i}: "
    make = gets.chomp

    print "Enter model for car #{i}: "
    model = gets.chomp

    print "Enter year of car #{i}: "
    year = gets.to_i

    # create a new Car object
    c = Car.new

    # set the make, model, and year
    # that we just read in
    c.set_make(make)
    c.set_model(model)
    c.set_year(year)

    # add the Car object to the array
    array_of_cars << c
end

# print out the information for
# the Car objects in the array
puts
puts "You have the following cars: "

for car in array_of_cars
  puts "#{car.get_year} #{car.get_make} #{car.get_model}"
end
