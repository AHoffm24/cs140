#Write a program that insers student data
#into a CSV file in form of name,class ,grade

bob = {name: "Bob", class: "CS140", grade: "A"}
jill = {name: "Jill", class: "CS270", grade: "B"}
#"w"stands for write mode will allow it to overwrite existing contents
File.open("students.csv", "w") do |f|
    f.puts "#{bob[:name]}, #{bob[:class]}, #{bob[:grade]}"
    f.puts "#{jill[:name]}, #{jill[:class]}, #{jill[:grade]}"
end
