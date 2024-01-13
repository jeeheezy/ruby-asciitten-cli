require_relative "asciitten"
class Prompters
  def initialize
    @cat_speak = ["Meow", "Nyan", "Purr", "Omae wa mou shindeiru", "Hiss"]
  end

  def user_inputs
    value = gets.chomp
    value.capitalize!
    value.strip
  end

  def run 
    talking_cat = Asciitten.new()
    puts talking_cat.ascii_cat
    loop do 
      puts "1. Speak in cat"
      puts "2. Speak in human"
      puts "3. Bye-bye"
      puts "\n"
      print "Telling the ascii cat: "
      choice = user_inputs
      if choice == "1" || choice == "One" || choice == "Speak in cat"
        talking_cat.text = @cat_speak.sample()
        puts talking_cat.ascii_cat
      elsif choice == "2" || choice == "Two" || choice == "Speak in human"
        talking_cat.text = "#{@cat_speak.sample}, what do you want me to say? I've spoken human thus far, no?"
        puts talking_cat.ascii_cat
        loop do
          puts "1. Copy what I say"
          puts "2. Say some swear words"
          puts "3. Nevermind, my feeble human mind didn't comprehend you are a cat"
          puts "\n"
          print "Making a choice: "
          choice2 = user_inputs
            if choice2 == "1" || choice == "One" || choice == "Copy what I say"
              print "\nSay what? : "
              parrot = gets.chomp
              talking_cat.text = "#{parrot}. What else should I do? #{@cat_speak.sample}"
              puts talking_cat.ascii_cat
            elsif choice2 == "2" || choice2 == "Two" || choice2 == "Say some swear words"
              talking_cat.text = "You shouldn't tell a cat to do such immoral things. https://tenor.com/view/no-gif-18392688"
              puts talking_cat.ascii_cat
            elsif choice2 == "3" || choice2 == "Three" || choice2 == "Nevermind, my feeble human mind didn't comprehend you are a cat"
              talking_cat.text = "#{@cat_speak.sample}. Be glad I am patient. #{@cat_speak.sample}"
              puts talking_cat.ascii_cat
              break
            else
              talking_cat.text = "Ascii cats don't understand that command dummy, try again. #{@cat_speak.sample}"
              puts talking_cat.ascii_cat
            end
          end
      elsif choice == "3" || choice == "Three" || choice == "Bye-bye"
        talking_cat.text = "Goodbye, foolish human. #{@cat_speak.sample}"
        puts talking_cat.ascii_cat
        break
      else
        talking_cat.text = "Ascii cats don't understand that command dummy, try again. #{@cat_speak.sample}"
        puts talking_cat.ascii_cat
      end
    end
  end

end
