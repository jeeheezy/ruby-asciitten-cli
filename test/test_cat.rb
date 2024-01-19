require 'minitest/autorun'
require './asciitten'

class TestCat < Minitest::Test
  def test_initial_cat
    cat = Asciitten.new
    assert_equal "
+----------------+
| Nyan, what do? |
+----------------+
    /
   / 
 ╱|、   
(˚ˎ 。7 
|、˜〵        
じしˍ,)ノ\n
", cat.ascii_cat, "ascii_cat method failed"
  end

  def test_longer_text_cat
    cat = Asciitten.new
    cat.text = "This is a longer string that should evaluate properly and resize the text box so that the I do not get a result that overflows the text box. Otherwise, the asciitten will stay the same but this is the basis of how it is used in the prompter."
    assert_equal "
+----------------------------------------------------------------------------------------------------+
| This is a longer string that should evaluate properly and resize the text box so that the I do not |
| get a result that overflows the text box. Otherwise, the asciitten will stay the same but this is  |
|                            the basis of how it is used in the prompter.                            |
+----------------------------------------------------------------------------------------------------+
    /
   / 
 ╱|、   
(˚ˎ 。7 
|、˜〵        
じしˍ,)ノ\n
", cat.ascii_cat, "longer text ascii_cat method failed"
  end
end
