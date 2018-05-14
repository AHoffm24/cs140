



class MyNewException < Exception
    attr_reader :msg

    def initialize(msg)
        @msg = msg
    end
end

print "Enter your first and last name: "
begin
cont = 'a'

name = gets.chomp
first = ''
last = ''
first, last  = name.split
flag = false


  if last == nil
        raise MyNewException, "I need your full name, please enter again: "
  else
        puts "Hello there, #{first} #{last}"
        flag = true
  end
rescue MyNewException => e
    print e.msg

end while flag == false
