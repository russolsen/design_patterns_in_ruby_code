

class Expression

  def |(other)
    Or.new(self, other)
  end

  def &(other)
    And.new(self, other)
  end

end


def all
  All.new
end

def bigger(size)
  Bigger.new(size)
end

def file_name(pattern)
  FileName.new(pattern)
end

def except(expression)
  Not.new(expression)
end

def writable
  Writable.new
end

