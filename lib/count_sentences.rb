# Objectives
# practice definig instane methods on a class
# practice defining instance methods that use the self keyword to operate on the object on which 
# the method is being called
# learn about monkey patching

# overview
# in this lab you'l be adding a few instance methods to Ruby's String class.
# we generally want to avoid altering built-in classes (esp if we are working with other people)
# but in this case we're not overwriting any methods, and it's a good exercise in OO programming.
# the practice of adding methods to or altering Ruby's built-in classes is called monkey patching.

# the String class is just like any other class that we might define, such as a Dog class or a Person class.
# the String class however is native to, or included in, Ruby. So, we can add or change methods
# in the String class just like we would in any of the classes that we define ourselves. 

# Monkey Patching is the practice of adding methods to or altering Ruby's core classes. Monkey
# patching is dangerous! What if, for example, you decide to monkey patch Ruby's String class to
# produce a quick-fix that shortens a certain section of code in your program. Then, months later,
# you run into major bugs as a result, or some of your collaborators don't know about your monkey
# patch and develop bugs of their own that they don't know the origin of? For reasons like these, monkey
# patching should be considered very, very carefully. We're going to do it today, just for run, but you do want
# to avoid doing it when working on your own programs. 

# Instructions
# the #sentence? method
# define this instance method to return true if the string you are calling it on ends in a period and
# false if it does not
# you will need to use the self keyword in the body of this method to refer to the string on which the method
# is being called. you can use the #end_with? method to determine what the final character in a string is.

# the #question? method
# this instance method should use the self keyword to refer to the string on which it is being called.
# this method should return true if a string ends with an exclamation mark and false if it does not.

# the #count_sentences method
# we'd like to be able to call a count_sentences method on a string, and get back a count of sentences in that string
# eg "This is a string! It has three sentences. Right?".count_sentences #=> 3
# your #count_sentences method should use the self keyword to refer to the string on which it is called

# think about the steps you need to go through to enact that desired behavior
# split the string on any an all periods, question marks, and exclamation marks
# count the number of elements that results from that split
# remember to consider edge vases such as the following sentence: "This, well, is a sentence. This is too!!
# And so is this, I think? Woo..." What would happen if we split this sentence on the punctuation characters? We would
# end up with an array that contains empty strings as well as strings containing sentences. How would you eliminate empty
# strings from an array? We recommend placing require 'pry' on the top of the file and placing a binding.pry inside of the
# #count_sentences method to help you get this test passing. 

require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else
      false 
    end

  end 

  def question?
    if self.end_with?("?")
      true 
    else
      false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else 
      false 
    end   
  end

  def count_sentences
    self.split(/\.\.\.|\?|!!|\./).size 
  end
end



# if self.end_with?("!")
      
# elsif self.end_with("?")

# elsif self.end_with("...")

# elsif self.end_with(".")