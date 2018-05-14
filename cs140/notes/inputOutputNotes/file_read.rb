#read in text form a file and print out each line with its line number

line_num = 1
#open file              |f| is a block parameter which is a file object
#will read in one line at a time
File.open("poem.txt") do |f|
    while line = f.gets
      puts "#{line_num}: #{line}"
      line_num += 1
    end
end

#ruby closes the file automatically inside of the code block
##if you have a directory as followed
#main
#-dir1
  #prog.txt
#-dir2
  #file.txt
f = File.open("main/dir2/file.txt") #will open file .txt by giving it the path 
