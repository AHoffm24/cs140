#scope: The areas of a program in which an identifier can be validly referenced
#outer scope
x = 3
if x == 3
  y = 2
end
puts y
#method scope
def add(num1, num2)
  sum = num1 + num2
  puts sum
end
add(2, 2)

#puts sum, will not work because sum is part of the method and not outer scope
#class scope
#numerator and denominator are in the scope of class and only class. they can be
#acced in outer scope but only if object exist first.
class Fraction
    attr_accessor :numerator, :denominator #attr generate 2 instance methods
    #which allow to retrieve and update instance variables
    def initialize(n,d) #initilize is a reserved work for a constructor in ruby
        @numerator = n
        @denominator = d
    end

    def assign(n, d)
        @numerator = n
        @denominator = d
        num = 3
    end

    def print
        #puts num, will not work because it was not defined within the class, only within the assign method scope
        #if num has @ symbol infront it would be able to be accessed
        puts "#{@numerator}/#{@denominator}"
    end
end

f1 = Fraction.new(1,2) #.new sustantiates an object.
f1.print
f1.assign(2,3)
f1.print
f1.numerator = 3
f1.denominator = 4
f1.print
