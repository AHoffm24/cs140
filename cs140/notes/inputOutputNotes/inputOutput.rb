#Using the File Class
#link to all info on ruby class file
#https://ruby-doc.org/core-2.2.0/File.html

#how to interact with files and read them


#steps of file i/o
#how to open a file
  #Must know name and location of the files
  #are we going to read, write, or read/write (known as mode of the file)
#how to read file
#can read one char at a time
#can read line by line
#can read all at once.
#move around the file
#write to the file
#how to save changes to the files
#close the file

line_num = 1
#open file              |f| is a block parameter which is a file object
#will read in one line at a time
File.open("poem.txt") do |f|
    while line = f.gets
      puts "#{line_num}: #{line}"
      line_num += 1
    end
end


bob = {name: "Bob", class: "CS140", grade: "A"}
jill = {name: "Jill", class: "CS270", grade: "B"}
#"w"stands for write mode will allow it to overwrite existing contents
File.open("students.csv", "w") do |f|
    f.puts "#{bob[:name]}, #{bob[:class]}, #{bob[:grade]}"
    f.puts "#{jill[:name]}, #{jill[:class]}, #{jill[:grade]}"
end
