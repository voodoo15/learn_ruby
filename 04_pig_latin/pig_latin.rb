#Exercise Debugging and Testing
#Example 5
#Name:  Arnold Redoblado
#Date:  2016-03-30
#Purpose:  Create a class(es) that'll pass a test script
#          This example requires methods that will take string
#          values and manipulate and return string.


def translate( word )
  #Practicing regular expression.  Checking if first
  #letter (^)is a vowel and add ay based on test script.
  word + "ay" if word[ /^[aeiou]/ ].downcase

end
