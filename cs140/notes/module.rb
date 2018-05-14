#how to inherate from more than just one parent


#MODULE
#What is a module - A package of methods and variables that you can include as
#part of a class deffiniton

#mixin
#class myClass
#    include ModuleName


#end
#syntax for a MODULE

#module ModuleName
#  @@var = value
#  def m1

#  end
#  def m2

#  end

#end #end of module

module Report
    def report
        puts "Report goes here"
    end
end

class Employee  #parent
  attr_accessor :salary

  def initialize(s)
      @salary = s
  end
end

class Worker < Employee
    include Report

end

class Taxes
    include Report

end

w = Worker.new(25000)
puts w.salary
w.report
t = Taxes.new
t.report
