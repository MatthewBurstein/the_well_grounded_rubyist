3.times { puts "******************************"}
puts "block_scope_demo"
puts "\n\n"

def block_scope_demo
  x = 100
  1.times do
    puts x
  end
end

block_scope_demo


3.times { puts "******************************"}
puts "block_scope_demo_2"
puts "\n\n"

def block_scope_demo_2
  x = 100
  1.times do
    x = 200
  end
  puts x
end

block_scope_demo_2

3.times { puts "******************************"}
puts "block_local_parameter"
puts "\n\n"

def block_local_parameter
  x = 100
  [1,2,3].each do |x|
    puts "Parameter x is #{x}"
    x += 10
    puts "Reassigned to x in blcok; it's now #{x}"
  end
  puts "Outer x is still #{x}"
end

block_local_parameter

3.times { puts "******************************"}
puts "block_local_variable"
puts "\n\n"

def block_local_variable
  x = "Original x!"
  puts x
  3.times do |i|
    x = i
    puts "x in the block is now #{x}"
  end
  puts "x after the block ended is #{x}"
end

block_local_variable
