# Name: Adam Hoffman , CS 140, Module 10 Assignment
# Description: This program creates a banking software to manage
#              checking nd savings account
# Input: user information on account deposits, withdrawal, and acount type
# Output: User menu, account information




# The array we'll use to store each account
Bank = Array.new

# Account class
# instance variables: :number, :principal, :balance, :type
# instance methods: deposit(amt), withdraw(amt)
class Account
    attr_accessor :number, :principal, :type

    def initialize(initial_deposit)
        @number = Bank.size + 1
        @principal = initial_deposit.to_f
    end

    def deposit(amt)
        @principal += amt
        self.balance
        printf "$%.2f successfully deposited\n", amt
        printf "Current balance is $%.2f\n", @principal
    end

    def withdraw(amt)
        @principal -= amt
        if @principal < 0
            puts "Your #{@type} account #{@number} is overdrawn!"
            printf "Current account balance: -$%.2f\n", @principal.abs
            printf "Please deposit at least $%.2f immediately to avoid additional fees!\n", @principal.abs
        else
            self.balance
            printf "%.2f successfully withdrawn. Current balance is %.2f\n", amt, @principal
        end
    end
end

#########################################################################
# IMPLEMENT CHECKING CLASS HERE
# you'll need to do the following:
#     1 -- create a constructor that first makes the appropriate call to
#     the Account class constructor (i.e., use super w/ parameters) and
#     sets the type
#     2 -- define a method called "balance" that computes the principal
#     plus interest according to the following simple formula
#
#         principal = principal * (1 + interest_rate / 365) ** 365
#
#     3 -- Looking at the above, you'll need to create a class variable
#     called @@interest_rate and set it's value to the current checking
#     account interest rate, which is 0.003
#########################################################################
class Checking < Account
    def initialize()
      super(0.0)
      @interest_rate = 0.03

    end

    def balance
      @principal = @principal * (1 + @interest_rate / 365) ** 365

    end
end
#########################################################################
# IMPLEMENT SAVINGS CLASS HERE
# you'll need to do the following:
#     1 -- create a constructor that first makes the appropriate call to
#     the Account class constructor (i.e., use super w/ parameters)
#     2 -- define a method called "balance" that computes the principal
#     and interest according to the following simple formula
#
#         principal = principal * (1 + interest_rate / 4) ** 4
#
#     3 -- Looking at the above, you'll need to create a class variable
#     called @@interest_rate and set it's value to the current savings
#     account interest rate, which is 0.025
#     4 -- Remember, the initial balance for a Savings account must be at
#     least $1000!
#########################################################################
class Savings < Account
  def initialize(amount)
    super(amount)
    @interest_rate  = 0.025

  end
  def balance
    @principal = @principal * (1 + @interest_rate / 4) ** 4

  end

end

# print_menu: displays a nicely formatted menu
#             and prompts the user for a choice
# parameters: none
# return value: none
def print_menu
    puts "Welcome to First Acme Banking!"
    puts "Please select from the following menu:"
    puts "    v - View current balance information"
    puts "    c - Create new checking account"
    puts "    s - Create new savings account"
    puts "    d - Deposit funds into account"
    puts "    w - Withdraw funds from account"
    puts "    q - Quit"
    print "Enter your selection: "
end

# The "main" part of the program
# keeps looping until the user chooses 'q'
# You shouldn't have to write anything in here!
begin
    # print the menu and get the choice
    print_menu
    choice = gets.chomp.downcase

    # do different things depending on what choice was entered
    case choice.downcase
        when "v"
            # if Bank is empty, then there are no accounts to display
            # so print an error message and continue to main screen
            if Bank.empty?
                puts "No accounts yet!"
                print "Press 'enter' to continue..."
                gets
            else
                # otherwise iterate over each account
                # and print the balance
                Bank.each do |acct|
                    printf "Acct #{acct.number} (#{acct.type}) has an available balance of $%.2f\n", acct.balance
                end
                print "Press 'enter' to continue..."
                gets
            end
        when "c"
            begin Module.const_get("Checking").is_a?(Class)
                # Checking accts don't have a minimum opening balance
                # so we can just create it with a 0 balance and ask
                # for a deposit
                acct = Checking.new
                puts "Your checking account #{acct.number} has been created!"
                print "Would you like to make a deposit (y/n)? "
                deposit = gets.chomp.downcase
                if (deposit.eql? "y")
                    print "Enter the deposit amount: "
                    amt = gets.to_f
                    acct.deposit(amt)
                end
                Bank << acct
                print "Press 'enter' to continue..."
                gets
            rescue NameError
                # if you see this message,
                # then you haven't done your homework...!
                puts "You haven't defined the Checking class yet,"
                puts "or you haven't inherited the Checking class from Account!"
                print "Press 'enter' to continue..."
                gets
            end
        when "s"
            begin Module.const_get("Savings").is_a?(Class)
                # Savings accts require a min $1000 opening balance
                # so get the deposit amount first and then create the acct
                print "Please enter an intial deposit (min $1000): "
                amt = gets.to_f
                acct = Savings.new(amt)
                puts "Your savings account #{acct.number} has been created!"
                print "Would you like to make another deposit (y/n)? "
                deposit = gets.chomp.downcase
                if (deposit.eql? "y")
                    print "Enter the deposit amount: "
                    amt = gets.to_f
                    acct.deposit(amt)
                end
                Bank << acct
            rescue NameError
                # if you see this message,
                # then you haven't done your homework...!
                puts "You haven't defined the Savings class yet!"
                print "Press 'enter' to continue..."
                gets
            end
        when "d"
            # if Bank is empty, then there's nothing to deposit to...
            if Bank.empty?
                puts "No accounts yet!"
                print "Press 'enter' to continue..."
                gets
            else
                # otherwise, find the account by number
                # ask for a deposit amount
                # and make the deposit
                print "Enter the account number you wish to deposit funds to: "
                acct_num = gets.to_i
                acct = Bank.find { |a| a.number == acct_num }
                print "Enter the amount you wish to deposit: "
                amt = gets.to_f
                acct.deposit(amt)
                print "Press 'enter' to continue..."
                gets
            end
        when "w"
            # if Bank is empty, then there's nothing to withdraw from...
            if Bank.empty?
                puts "No accounts yet!"
                print "Press 'enter' to continue..."
                gets
            else
                # otherwise, find the account by number
                # ask for a withdrawal amount
                # and make the withdrawal
                print "Enter the account number you wish to withdraw funds to: "
                acct_num = gets.to_i
                acct = Bank.find { |a| a.number == acct_num }
                print "Enter the amount you wish to withdraw: "
                amt = gets.to_f
                acct.withdraw(amt) # Note, withdrawal checks for overdrafts!
                print "Press 'enter' to continue..."
                gets
            end
        when "q"
            exit
    end
end until choice == "q"
