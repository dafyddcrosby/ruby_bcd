# frozen_string_literal: true

require 'test_helper'

class TestBCD < Minitest::Test
  def test_encode
    assert_equal 4, BCD.encode(4)
    assert_equal 22, BCD.encode(34)
  end

  def test_decode
    assert_equal 4, BCD.decode(4)
    assert_equal 345, BCD.decode(159)
  end
end
