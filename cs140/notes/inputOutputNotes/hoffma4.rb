# Name: Adam Hoffman , CS 140, Module 12 Assignment (Version 1)
# Description: Program is used to show input and output use in File Class
# Input: User input of file name, file input chosen by user.
# Output: each word used in the file, followed by it number of occurances
#output should be in reverse sorted order from most uses to least uses


#bubblesort: method that sorts array from largest to smallest
#parameters: count array that stores frequency of use, store array that stores
#each individual word.
def bubblesort(count, store)
  #using bubble sort to sort word usage from high to low
  #chose bubble sort for ease of impliminatation and because
  #we are using very small file sizes in regards to computers
  swapped = true
  while swapped == true
      swapped = false

      for i in 1..count.size-1
          #if position i-1 is less than position i in the count array then swap
          if count[i-1] < count[i]
                #swapping count array positions
                num = count[i-1]
                count[i-1] = count[i]
                count[i] = num
                #swapping store array position to correspond to count array
                word = store[i-1]
                store[i-1] = store[i]
                store[i] = word
                #swap flag true because swap found
                swapped = true
          end #end if
      end #end for
  end #end while
end #end bubblesort

#-------------------------------------------------------------
#printInfo: method that prints info in instructed way for assignment
#parameters: count array = frequency of word
#store array = each individual word found
def printInfo(count, store)
  for i in 0..store.size-1
    print  store[i]
    print  " => "
    puts   count[i]
  end #end for
end #end print info


#-------------------------------------------------------------
#main
#-------------------------------------------------------------
#asking user to enter name of file they would like to process
print "enter the file name: "
file_name = gets.chomp #deleting line break
#creating arrays
store = []
count = []

#opening file for reading
File.open(file_name) do |f|
  #while loop until end of file is reached
  #will read in line by line
  while line = f.gets

      #splits each word into array words
      words = line.split(/\W+/)

      #adding first word and count to each the 2 arrays storing info
      store << words[0]
      count << 1


      for i in 1..words.size-1

          flag = false #resetting flag for finding unfound words

          for j in 0..store.size-1

              if words[i] == store[j]
                    count[j] += 1
                    flag = true #flag tru so it will skip if statement
              end #end if statment

          end #end for j loop

          #word not read yet, store in array,
          #store count[i] = 1 in corresponding i position
          if flag == false
              store << words[i]
              count << 1
          end #end if #2

       end #end for i loop
   end #end while
end #end file open
#end of reading of file
#-------------------------------------------------------------
#sorts array
bubblesort(count, store)
#prints info for assignment
printInfo(count, store)
