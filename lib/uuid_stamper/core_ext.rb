String.class_eval do
  
  require "uuidtools"
  
  # add uuid
  def to_uniq
    "#{self}" + UUIDTools::UUID.timestamp_create().to_s
  end
  
  # remove uuid
  def from_uniq
    "#{self.slice -36, self.length}" 
  end
  
end