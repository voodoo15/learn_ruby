#Exercise Debugging and Testing
#Example 4
#Name:  Arnold Redoblado
#Date:  2016-03-30
#Purpose:  Create a class(es) that'll pass a test script
#          This example requires methods that will take string
#          values and manipulate and return string.

def echo( word )
  word
end

def shout( word )
  word.upcase

end

def repeat( word, options = {} )
  num = options[ :num ] ||= 2
    #Multiply the word and add space, but trim whitespace when outputted
  ( (word + " ") * num ).strip

end

def start_of_word( word, num )
  word[ 0..( num - 1 ) ]
end

def first_word( words )
  words.split[ 0 ]

end

def titleize ( phrase )
  #small_words = ["and", "over", "the"]
  #Taking the phrase and splitting into array,
  #Capitalizing the words and rejoining to a string
  phrase.split.each { | word | word.capitalize! }.join(" ").strip
  #phrase.split.each { | word | word.downsize! if word = "and" || word = "over" || word = "the" }.join(" ").strip

end
