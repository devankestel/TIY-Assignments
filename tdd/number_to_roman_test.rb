require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './fixnum'

class NumberToRomanTest < MiniTest::Test
  def test_1_becomes_I
    #make an assertion about how code coudl work
    #skip
    assert_equal "I", 1.to_roman 
  end
  def test_2_becomes_II
    #make an assertion about how code coudl work
    #skip
    assert_equal "II", 2.to_roman 
  end
  def test_10_becomes_X
    #make an assertion about how code coudl work
    #skip
    assert_equal "X", 10.to_roman 
  end
  def test_14_becomes_XIV
    #make an assertion about how code coudl work
    #skip
    assert_equal "XIV", 14.to_roman 
  end
  def test_23_becomes_XXIII
    #make an assertion about how code coudl work
    #skip
    assert_equal "XXIII", 23.to_roman 
  end
  def test_40_becomes_XL
    #make an assertion about how code coudl work
    #skip
    assert_equal "XL", 40.to_roman 
  end
  def test_46_becomes_XLVI
    #make an assertion about how code coudl work
    #skip
    assert_equal "XLVI", 46.to_roman 
  end
  def test_50_becomes_L
    #make an assertion about how code coudl work
    #skip
    assert_equal "L", 50.to_roman 
  end
  def test_61_becomes_LXI
    #make an assertion about how code coudl work
    #skip
    assert_equal "LXI", 61.to_roman 
  end
  def test_82_becomes_LXXXII
    #make an assertion about how code coudl work
    #skip
    assert_equal "LXXXII", 82.to_roman 
  end
end