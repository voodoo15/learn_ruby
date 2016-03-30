#Exercise Debugging and Testing
#Example 2
#Name:  Arnold Redoblado
#Date:  2016-03-30
#Purpose:  Create a class(es) that'll pass a test script
#          This example requires 2 methods to convert temp
#          between celsiu/fahrenheit and vice versa.

def ftoc( temp )

  ( (temp.to_i - 32.0) * 5 / 9 ).ceil

end

def ctof( temp )

  ( temp * 1.8 ) + 32

end
