#!/usr/bin/env ruby

require '../example'


example %q{

thread1 = Thread.new do 
  sum=0
  1.upto(10) {|x| sum = sum + x}
  puts "The sum of the first 10 integers is #{sum}"
end

thread2 = Thread.new do
  product=1
  1.upto(10) {|x| product = product * x}
  puts "The product of the first 10 integers is #{product}"
end

thread1.join
thread2.join
}
