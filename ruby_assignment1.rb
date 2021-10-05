# frozen_string_literal: true

# Compute the sum of cubes for a given range a through b. Write a method called sum_of_cubes to accomplish this task.
def sum_of_cubes(start, ending)
  i = start
  sum = 0
  while i <= ending
    sum += (i * i * i)
    i += 1
  end
  sum
end
puts sum_of_cubes(1, 3)
puts

# Q2) Given an Array, return the elements that are present exactly once in the array. You need to write a method called
# non_duplicated_values to accomplish this task. Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5].
def non_duplicated_values(array)
  array.find_all { |x| array.count(x) == 1 }
end
puts non_duplicated_values([1, 2, 2, 3, 3, 4, 5])
puts

# Q3) Given a sentence, return true if the sentence is a palindrome. You are supposed to write a method palindrome? to
# accomplish this task.
# Note Ignore whitespace and cases of characters. Example: Given ""Never odd or even"" the method should return true.
def palindrome_or_not(string)
  string = string.delete(' ').upcase
  string.eql? string.reverse
end
puts palindrome_or_not('Never odd or even')
puts

# Q4) 9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9, 297 is also Kaprekar number since 297 ^ 2 = 88209 and 88 +
# 209 = 297. In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits
# to the left n or n-1 digits, the resultant sum is k. Find if a given number is a Kaprekar number.
def kaprekar_num?(kap)
  square = kap**2
  digits = kap.to_s.length
  right_n_digits = square.to_s[(0 - digits)..-1].to_i
  left_digits = square.to_s[0..(1 - digits)].to_i
  sum = left_digits + right_n_digits

  if sum == kap
    puts "#{kap} : is a Kaprekar number"
  else
    puts "#{kap} : is not Kaprekar Number"
  end
end
check = kaprekar_num?(9)
puts check
puts

# Q5) Find occurrence of RUBY from string 1.
STRING_1 = 'RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text
as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.'
puts STRING_1.scan('RUBY').length
puts

# Q6) Find the position where RUBY occurs in the string 1.
puts STRING_1.index('RUBY')
puts

# Q7) Create array of words in string 1 & print them using a recursive function.
puts STRING_1.split(' ')
puts

# Q8) Capitalise string 1
puts STRING_1.capitalize
puts

# Q9) Combine string 1 & 2.
STRING_2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is
determined by the context in which the variable is used."
puts STRING_1 + STRING_2
puts

# Q10) Print current date.
puts Time.now.strftime('%d/%m%Y %H:%M')
puts

# Q11) print 12th Jan 2012
puts Time.new(2012, 1, 12)
puts

# Q12) add 7 days in current date
puts (Time.now + (60 * 60 * 24 * 7)).strftime('%d/%m/%Y')
puts

# Q13) Cut the string 1 into 4 parts & print it.
puts STRING_1.split(' ', 4)
puts

# Q14) Divide the string 1 by occurrences of '.'. Combine the array in reverse word sequence.
puts STRING_1.split('.').reverse
puts

# Q15) Remove the HTML characters from string.
puts STRING_1.gsub(%r{</?[^>]*>}, '')
puts

# Q16) Print the 'RUBY' word from string 1 by traversing it using string functions
STRING_1.scan(/[\w']+/) do |word|
  puts word if word.eql? 'RUBY'
end
puts

# Q17) Find the length of string 1 & 2.
puts STRING_1.length
puts STRING_2.length
puts

# Q18) Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates.
puts (Time.mktime(2011, 0o5, 12) - Time.mktime(2010, 0o4, 12)).to_i / (24 * 60 * 60)
puts

# Q19) Print date after 20 days from current date
puts (Time.now + (60 * 60 * 24 * 20)).strftime('%d/%m/%Y')
puts

# Q20) Print date in array format.
puts Time.now.to_a

# Q21) Print prime numbers from the given array.
def check_prime(arr)
arr.each{|num|
flag = false
if num > 1
for i in 2..num-1
if num % i == 0
flag = true
break
end
end
if flag == false
puts "#{num} is a Prime Number"
end
end
}
end
check_prime([1, 2, 3, 4, 5, 6, 7, 8, 9])
puts

# 22) Write a program for fuel indication.
# Ex: 0 -> Out of fuel, 1-10 -> Low, Please fill, 11-30 -> Good for now, 31-50 -> Almost Full, > 50 -> Full.
input = -2
if input.negative?
puts 'Invalid input, Please insert a positive input'
elsif input.zero?
puts 'Out of Fuel'
elsif input == (1..10)
puts 'Low, Please fill'
elsif input == (11..30)
puts 'Good for now'
elsif input == (31..50)
puts 'Almost Full'
elsif input == 50
puts 'Full'
end
puts

# Q23) Swap the given values(without the third variable)
def swap_num(rust, boost)
  rust = rust + boost
  boost = rust - boost
  rust = rust - boost
  puts "The value of rust after swap : #{rust}"
  puts "The value of boost after swap : #{boost}"
end
swap_num(3, 6)
puts

# Q24) Program to Randomly Select an Element From the Array.
arr = [5, 2, 7, 4].sample
puts arr
puts

# Q25) Program to Count the Number of Each Vowel.
def count_vowels(string)
  string.count('aeiou')
end
puts count_vowels('asdfghjklqwertyuiopasdfghjklzxcvbnm')
puts

# Q26) Program to Sort a Hash by Value.
hash = { 'amazon' => 67, 'flipkart' => 13, 'myntra' => 93, 'lenskart' => 1 }
hash.sort_by { |_key, value| value }
puts

# Q27) Program to Convert Two Arrays Into a Hash.
def combine_array_into_hash
  key = %w[Seeta Geeta]
  value = %w[1 2]
  puts Hash[key.zip(value)]
end
puts combine_array_into_hash
