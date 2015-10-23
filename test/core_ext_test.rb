require 'test_helper'
 
class CoreExtTest < ActiveSupport::TestCase
  #def test_to_uniq_is_not_equal_to_original
  #  assert_not_equal "Rocking Around...", "Rocking Around...".to_uniq
  #end
  
  #def test_to_uniq_is_66_chars_longe
  #  assert_equal "1234567890-".to_uniq.length.to_i,  66
  #end
  
  def test_from_uniq_is_equal_to_original
    original_str = 'Rocking and Roling'
    uniq_str     = original_str.to_uniq
    assert_equal original_str, uniq_str.from_uniq
  end
  
  def test_fixnum_converts_to_uniq_string
    original_fixnum = 123
    uniq_str     = original_fixnum.to_uniq
    assert_equal original_fixnum, uniq_str.to_f
  end
  
  
  
  def test_float_converts_to_uniq_string
    original_fixnum = 123.456
    uniq_str     = original_fixnum.to_s.to_uniq
    assert_equal original_fixnum, uniq_str.from_uniq.to_f
  end

  
end