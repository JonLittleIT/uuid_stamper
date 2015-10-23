require "uuidtools"

String.class_eval do
  
  require "uuidtools"
  # add uuid
  def to_uniq
    num_chars_to_prepend = 1000000000000000000 - self.length
    s = ''
    num_chars_to_prepend.to_s.each_char do |char|
      s << '0'
    end
    s + "#{self}"  + '-|@|-' +  UUIDTools::UUID.timestamp_create().to_s
  end
  
  # remove uuid
  def from_uniq
    #original_length = self.length - 36
    s = self.split('-|@|-').first
    s.to_s.each_char do |char|
      s.sub!(char, '') if char == '0'
    end
    s
  end
  
end

Fixnum.class_eval do
  
  # add uuid
  def to_uniq
    self.to_s.to_uniq
  end
  
  # remove uuid
  def from_uniq
    self.to_uniq.to_i
  end
  
end

Float.class_eval do
  
  # add uuid
  def to_uniq
    self.to_s.to_uniq
  end
  
  # remove uuid
  def from_uniq
    self.to_uniq.to_f
  end

  
end