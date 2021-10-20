# frozen_string_literal: true

puts 'Enter number of elements'
a = gets
a = a.chomp
a = a.to_i
arr = []
puts 'Enter the Elements'
while a.positive?
  arr.push(gets.chomp.to_i)
  a -= 1
end
puts 'The Elements You have entered are'
p arr

cnt = 0
arr.each do |num|
  cnt += 1 if (num % 2).zero?
end
puts cnt
