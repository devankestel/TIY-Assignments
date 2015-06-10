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
end