#!/usr/bin/env ruby

puts "Please enter a value for n (Interger > 0)"
n = gets.chomp.to_i
raise 'n should be an integer' unless n.is_a?(Integer)
raise 'think positive' if n < 0

def get_multiples_sum(n)
  return 0 if n == 0

  multiples = (0...n).select { |i| i%3 == 0 || i%5 == 0 || i%7 == 0 }

  puts 'Found all this number matching condition :'
  p multiples

  multiples.reduce(:+)
end

def get_multiples_sum_2(n)
  (0...n).inject(0) { |sum, i| i%3 == 0 || i%5 == 0 || i%7 == 0 ? sum += i : sum }
end

puts "Sum of that collection is : #{get_multiples_sum(n)}"
puts "Sum of that collection is : #{get_multiples_sum_2(n)}"
