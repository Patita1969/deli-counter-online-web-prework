# Write your code here.
def take_a_number(current_line, new_person)
  current_line << new_person
  current_line.length
end

def now_serving(current_line)
  puts "Currently serving #{current_line.first}"
  current_line.shift
end

def line(current_line)
  puts "The line is currently: "
  current_line.each_with_index{|x,i| puts "#{i+1}. #{x} "}
end

katz_deli = []

take_a_number(katz_deli, "Ada") #=> "1"
take_a_number(katz_deli, "Grace") #=> "2"
take_a_number(katz_deli, "Kent") #=> "3"

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

now_serving(katz_deli) #=> "Currently serving Ada"

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> "3"

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

now_serving(katz_deli) #=> "Currently serving Grace"

line(katz_deli) #=> "1. Kent 2. Matz"
