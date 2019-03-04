
def take_a_number(current_line, name)
  your_spot = current_line.size + 1

  message = "Hello, #{name}, you are ##{your_spot}."
  message
end

def now_serving(current_line)
  next_customer = current_line.shift
  puts "Come on up, #{next_customer}!"
  current_line
end

def line(current_line, name)
  your_spot_in_line = current_line.index(name)+1
  puts "Hello, #{name}, your current position in line is: ##{your_spot_in_line}."
end

def line_alt(current_line)
  status = "The line is currently: "
  current_line.each_with_index do |person, index|
    status += "#{index+1}. #{person} "
  end
  status
end
