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
  def test_90_becomes_XC
    #make an assertion about how code coudl work
    #skip
    assert_equal "XC", 90.to_roman 
  end
  def test_93_becomes_XCIII
    #make an assertion about how code coudl work
    #skip
    assert_equal "XCIII", 93.to_roman 
  end
  def test_98_becomes_XCVIII
    #make an assertion about how code coudl work
    #skip
    assert_equal "XCVIII", 98.to_roman 
  end
  def test_100_becomes_C
    #make an assertion about how code coudl work
    #skip
    assert_equal "C", 100.to_roman 
  end
  def test_112_becomes_CXII
    #make an assertion about how code coudl work
    #skip
    assert_equal "CXII", 112.to_roman 
  end
  def test_234_becomes_CCXXXIV
    #make an assertion about how code coudl work
    #skip
    assert_equal "CCXXXIV", 234.to_roman 
  end
  def test_386_becomes_CCCLXXXVI
    #make an assertion about how code coudl work
    #skip
    assert_equal "CCCLXXXVI", 386.to_roman 
  end
  def test_400_becomes_CD
    #make an assertion about how code coudl work
    #skip
    assert_equal "CD", 400.to_roman 
  end
  def test_454_becomes_CDLIV
    #make an assertion about how code coudl work
    #skip
    assert_equal "CDLIV", 454.to_roman 
  end
  def test_491_becomes_CDXCI
    #make an assertion about how code coudl work
    #skip
    assert_equal "CDXCI", 491.to_roman 
  end
  def test_500_becomes_D
    #make an assertion about how code coudl work
    #skip
    assert_equal "D", 500.to_roman 
  end
  def test_605_becomes_DCV
    #make an assertion about how code coudl work
    #skip
    assert_equal "DCV", 605.to_roman 
  end
  def test_725_becomes_DCCXXV
    #make an assertion about how code coudl work
    #skip
    assert_equal "DCCXXV", 725.to_roman 
  end
  def test_858_becomes_DCCCLVIII
    #make an assertion about how code coudl work
    #skip
    assert_equal "DCCCLVIII", 858.to_roman 
  end
end