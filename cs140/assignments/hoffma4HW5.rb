#Adam Hoffman, CS140-1001, Assignment 5
#Program is expected to repeatadly ask the user to enter a number 'q' to equivalent
#If the user enters a number the program should calculate the factorial
#If the user enters Q or q  the program should terminate
#Email Hoffma4@unlv.nevada.edu
#input: user input of Q or q to quit, or a number to be used to get its factorial
#output: Ask the user to enter a number or Q/q to quit. It will then print the
# original number and say its factorial


fact = 1   #fact is used to store the factorial value being found in the for loop
input = '' #used to store the user input

while input != 'q' || input != 'Q'   #will continue until user enter Q or q
  puts "Enter a number (Q/q to quit) :"
  input = gets.chomp  #getting information from user

  if input == 'q' || input == 'Q'  #checking if user want to quit
    puts "Gooodbye!"

  else #user entered number, so find its factorial
    input = input.to_i

      for x in (1..input)
          fact *= x #multiplies factorial from 1 to the top number i.e 3! = 1 * 2 * 3
      end #end of for

    puts "#{input}! is #{fact}"

  end      #end of if else
  fact = 1 #reseting factorial to 1 incase it needs to be used again.
end        # end of while
    #end of program
