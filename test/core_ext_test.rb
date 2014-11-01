require 'test_helper'
 
class CoreExtTest < ActiveSupport::TestCase
  def test_to_uniq_is_not_equal_to_original
    assert_not_equal "Rocking Around...", "Rocking Around...".to_uniq
  end
  
  def test_to_uniq_is_36_chars_longer_than_original
    uniq_length =  "1234567890".length + 36
    assert_equal "1234567890".to_uniq.length.to_i,  uniq_length
  end
  
  def test_from_uniq_is_equal_to_original
    original_str = 'Rocking and Roling'
    uniq_str     = original_str.to_uniq
    assert_equal original_str, uniq_str.from_uniq
  end

  
end