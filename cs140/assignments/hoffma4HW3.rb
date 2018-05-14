#Adam Hoffman, CS140-1001, Assignment 3
#Program Reads in user info and creates a "Digital Business Card" in terminal
#Email Hoffma4@unlv.nevada.edu
#Program Reads in user info and creates a "Digital Business Card" in terminal
#input: user name, title, deparment, and email
#output Business card with information formatted as to look like a digital
       #Buisness card

#gets user info for ID card and Reads them with the spaces for
#formating later one
puts "Enter Your Name: "
name = "  " + gets.chomp #Adding 2 spaces for foramting reasons later
puts "Enter Your Title: "
title = "  " + gets.chomp #gets titles from input
puts "Enter Your Department/Major: "
deps = gets.chomp #gets department/major from input
puts "Enter Your Email: "
mail = "  " + gets.chomp #get email address from input


#Printing business card
puts "\n" + "Here is your new business card" + "\n" + "\n"
boarder = '-'
space = " "
puts '+' + boarder * 38 + '+' #prints boarder of width 38 + 2 for the + = 40W
puts "|%-38s|" % space #creating outside boarder
name = "|%-38s|" % name #"|%-38s|"fills the area after the name with spaces,Sets width
puts name #print name
title = "|%-38s|" % title #sets title to =  persons title with boarders width 40
puts title #prints title
deps = "  Deptartment of " + deps #deps now formated to say department of as well
deps = "|%-38s|" % deps
puts deps
school = "  University of Nevada Las Vegas" #creating variable to print U of NV
school = "|%-38s|" % school #Created variable to print it for formatting reasons
puts school #prints school name as seen on line 34
mail = "|%-38s|" % mail #same as above
puts mail #prints mail
space = " "
puts "|%-38s|" % space #creatint bottom boarder
puts '+' + boarder * 38 + '+' #width 40 total
