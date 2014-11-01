String.class_eval do
  
  require "uuidtools"
  
  # add uuid
  def to_uniq
    "#{self}" + UUIDTools::UUID.timestamp_create().to_s
  end
  
  # remove uuid
  def from_uniq
    #original_length = self.length - 36
    "#{self.slice 0, self.length - 36}" 
  end
  
end