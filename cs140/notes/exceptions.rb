# exceptions, or logical errors.

#What is a logical error
  #wrong value
  #exceptions
          #thought of as an error object in ruby. to handle the errors


#types of retrun values  able to be entered
#hashes for example
#h.fetch(:itemThatDoesntExist)
#gives different error itemThatDoesntExist
#h.(:itemThatDoesntExist)


#Exception Handling
#--------------------------------------------------------------------
#Exception: An event that disrupts the normal flow of program execution
# an exception is said to be Raised or thrown
#2 options to fix it
# 1. deal with it " Handle it"
# 2. program will crash
#example

def calc(a, op, b)
      case op
        when '+'
          return a + b
        when '-'
          return a - b
        when '*'
          return a * b
        when '/'
          begin
              return a / b
          rescue => e #assign rescue to an identifier
              puts e.message
          end

      end
end
begin
    print "enter a simple arithmetic expression: "
    expr = gets.chomp

    a, op, b = expr.split

    puts "#{calc(a.to_i, op, b.to_i)}"

    print "Press any key to continue, q to quit: "
    cont = gets.chomp
end while cont != 'q'
# if you divided 10 / 0 it would cause a zero divison error since you cannot divided
# by 0.
#
#begin rescue block is how you handle errors
#
#
#
#
#
#
#
#
#
#
#
#
#
