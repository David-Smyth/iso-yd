#!/usr/bin/env ruby

def testBlabbing(s)
  if s.nil?
  	"Nil"
  elsif s.empty?
    "Empty"
  else
    "Non-empty"
  end
end

puts "One: " + testBlabbing("")
puts "Two: " + testBlabbing("Here!")
puts "3: " + testBlabbing(nil)

a = [5, 10, 20, 90, 110]
b = a[11:-1]

