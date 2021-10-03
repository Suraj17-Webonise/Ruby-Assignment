# frozen_string_literal: true

# Q1 Use Blocks, Procs and Lambda each to write a program which takes array of integers as an input and finds the count
# of even numbers in the array
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
puts 'The count of even numbers in the array is :'
puts cnt
# Q2 Write a class in ruby which represents a Company. Add constructors, high level private and public methods which
# suit the company chores (eg: divisions in the company, number of employees in each division etc)
# Q3 Create a module which when added should add a class method in the Company class created above
# Q4 Create separate sub classes for Product and Services section of the same Company class created above and add their
# separate high level methods (eg: For product, what should be the revenue generating factor, similar with services.
# Q5 Write a method in Company class which reads a csv file containing employee details (name, age, designation etc)"

# This is a module
module MyModule
  def msg
    puts
    puts 'Module Added Succesfully in the Company Class'
    puts
  end
end

# This is a super class
class Company
  attr_accessor :compnam, :pmodnum, :manfyear

  def initialize(compnam, pmodnum, manfyear)
    @comp_name = compnam
    @prod_mod_num = pmodnum
    @manf_year = manfyear
  end

  def display_prod_detail
    puts "Product Company Name: #{@comp_name}, Model Number : #{@prod_mod_num}, Manufacturing Year : #{@manf_year}"
  end

  def display_data_from_csv
    require 'csv'
    puts
    puts '---------------General Details of Employees---------------'
    table = CSV.parse(File.read('emp_info_sheet.csv', headers: true))
    puts table
  end
  include MyModule
end

# app/models/user.rb

# This is a subclass of Company class
class Product < Company
end

# app/models/user.rb

# This is a subclass of Company class
class Services < Company
  def ser_provided
    puts '1 Year warrenty on mobile phone'
    puts 'Warrenty does not include any display/screen replacement'
    puts 'Charger and earphones in box'
  end
end

p = Product.new('Samsung', 'A37', 2021)
s = Services.new('Oppo', 'N95', 2021)
p.display_data_from_csv
p.msg
p.display_prod_detail
s.ser_provided
