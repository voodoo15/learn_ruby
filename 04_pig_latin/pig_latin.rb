#Exercise Debugging and Testing
#Example 5
#Name:  Arnold Redoblado
#Date:  2016-03-30
#Purpose:  Create a class(es) that'll pass a test script
#          This example requires methods that will take string
#          values and manipulate and return string.


def translate( word )
  #Practicing regular expressions. If I can find the first vowel then take the index
  #where that vowel is and split the word.  If word has no vowels or first letter is a vowel,
  #just put word in new_word variable.

  phrase = ""

  word.split.each do | word |

    #If first letter is a vowel or no vowels in the word, just give the word
    if ( /[aeiou]/ =~ word ) == 0 || ( /[aeiou]/ =~ word ) == nil
      new_word = word
    #If my word starts with a qu then we'll split the word with the qu together
    elsif word[ 0..1 ] == "qu"
      new_word = word[ 2..word.length ] + word[ 0..1 ]
    #if word.split.any? { |letter| /[aeiou]/ =~ letter }
    #If my word starts with an squ then we'll split this word with the squ together
    elsif word[ 0..2 ] == "squ"
      new_word = word[ 3..word.length ] + word[ 0..2 ]
    else
      new_word = word[ ( /[aeiou]/ =~ word )..word.length ] + word[ 0..( ( /[aeiou]/ =~ word ) - 1 ) ]
    end

    #Add ay if vowel is at the front of the new word
    new_word += "ay" if new_word.split.any? { | letter | /[aeiou]/ =~ letter }

    #Adding the words together to form the output with space
    phrase += "#{ new_word } "

  end

  puts phrase
  phrase.strip

end

translate("eat pie")
translate("cherry")
translate("school")
translate("three")
translate("quiet")
translate("fry")
translate("nymph")
translate("apple")
translate("the quick brown fox")
translate("square")
