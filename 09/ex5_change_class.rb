

# Make sure the original class is loaded

require 'british_text_object'

# Now add some methods to the original class

class BritishTextObject
  def color
    return colour
  end

  def text
    return string
  end

  def size_inches
    return size_mm / 25.4
  end
end
