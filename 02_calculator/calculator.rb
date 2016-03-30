require 'pry'

#Exercise Debugging and Testing
#Example 3
#Name:  Arnold Redoblado
#Date:  2016-03-30
#Purpose:  Create a class(es) that'll pass a test script
#          This example requires methods that will do mathematical
#          functions

def add( value_x, value_y )

  value_x + value_y

end

def subtract( value_x, value_y )

  value_x - value_y
end

def sum( incoming_array )

  output = 0
  incoming_array.each { | value | output += value.to_i }
  output

end

def product( incoming_array )

  output = 1
  incoming_array.each { | value | output *= value.to_i }
  output

end

def factorial( incoming_factorial )

  return 1 if incoming_factorial == 0

  output = 1
  (1..incoming_factorial).each { | value |  output *= value }
  output

end
