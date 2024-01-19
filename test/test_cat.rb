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
end
