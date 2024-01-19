class Asciitten
  attr_accessor :text

  def initialize
    @text = "Nyan, what do?"
  end

  def ascii_cat
    width = @text.length
    if width >= 100
      split_text = @text.scan(/.{1,100}(?=\s|$)|\S+/)
      split_text.map! {|string|
        string.strip
      }
      max_characters = split_text.max.length
      outline_width = "-" * (max_characters + 2)
      outline = "+#{outline_width}+"
      output = ""
      split_text.each {|stripped_string|
        push_string = "|#{stripped_string.center(max_characters+2)}|"
        if output == ""
          output = output + push_string
        else
          output = output + "\n" + push_string
        end
      }
    else
      outline_width = "-" * (@text.length + 2)
      outline = "+#{outline_width}+"
      output = "| #{@text} |" 
    end
    return "
#{outline}
#{output}
#{outline}
    /
   / 
 ╱|、   
(˚ˎ 。7 
|、˜〵        
じしˍ,)ノ\n
"
  end
end
