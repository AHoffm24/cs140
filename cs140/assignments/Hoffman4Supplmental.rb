
# Name: Adam Hoffman , CS 140, Supplemental Assignment (Version 1)
# Description: This program creates a ledger to store bank transactions,
#check for over draft, and neatly print out a bank statment
# Input: non, all from main
# Output: ledger or bank statment of each transaction from the account
# and the current balance of the account after all transactions.


# Transaction: class that represents a transaction and all the information from
# each individual transaction
# public methods: Constructor
# instance variables: @date, @payee, @amount @type @currbalance
#note for teacher: I added current balance to the class as there was no
#specification on how we had to keep a running total and this was the simplest way
class Transaction
      attr_accessor :date, :payee, :amount, :type, :currBalance
      # constructor : intitalize class variables
      # parameters: date, payee, amount, type
      # return value: n/a
      def initialize(d, n, a, t)

        @date = d.to_s   #storing data as string
        @payee = n.to_s  #storing payee as string
        @amount = a.to_f #storing amount as float
        @type = t.to_c   #storing type as char
        @currBalance = 0.0 #setting current balance as zero just to initilize as float

      end #end of constructor

end #end of transaction



# Checkbook: Class that utilizes transaction class type variables to store each
#individual transaction in  a ledger array. This way each transaction can be accessed
#at a later time for use, such as in the print method
# public methods: Constructor, deposit, withdrawal, print
# instance variables: @balance
class CheckBook
  attr_accessor :balance

      # constructor : intitalize class variables
      # parameters: initial balance of account
      # return value: n/a
      def initialize(n)

          @balance = n
          @ledger = []

      end

      # deposit: Add money to account, store transaction in ledger
      # parameters: class variable of class transaction
      # return value: n/a
      def deposit(t)

          @balance += t.amount
          t.currBalance = @balance
          @ledger << t

      end #end deposit

      # withdrawal: Process transaction and removes money from account balance
      # also checks for valid withdrawl or displays error message.
      # parameters: Class variable of class transaction
      # return value: n/a
      def withdrawal(t)
          if (@balance - t.amount) < 0
              #print error message
              puts "#{t.date} Overdraft: Unable to complete transaction to #{t.payee} for #{t.amount}"

          else
              @balance = @balance - t.amount
              t.currBalance = @balance
              @ledger << t

          end
      end #end withdrawal

      # print: print the ledger of each transaction including the data, payee,
      # the amount of the transaction and the current balance after the transaction
      # parameters: n/a
      # return value: n/a
      def print

          #Each variable of the array is of type class and the |l| allows you to access
          #each instance of the class individually as you would with a single
          #class type variable 
          @ledger.each do |l|
            puts "#{l.date} #{l.payee} #{l.amount} #{l.currBalance}"
          end

          puts "Current Balance: #{@balance}"

      end#end print

end #end of checkbook


#main

my_checking = CheckBook.new(50.00)
t1 = Transaction.new("3/10/18", "Acme", 50.15, "w")
my_checking.withdrawal(t1)
t2 = Transaction.new("3/12/18", "Vons", 24.37, "w")
my_checking.withdrawal(t2)
t3 = Transaction.new("3/13/18", "refund", 31.02, "d")
my_checking.deposit(t3)
my_checking.print
