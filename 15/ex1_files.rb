require 'find'

class Expression
  def |(other)
    Or.new(self, other)
  end

  def &(other)
    And.new(self, other)
  end
end


class FileName < Expression
 def initialize(pattern)
   @pattern = pattern
 end

 def evaluate(dir)
   results= []
   Find.find(dir) do |p|
     next unless File.file?(p)
     name = File.basename(p)
     results << p if File.fnmatch(@pattern, name)
   end
   results
 end
end

class All < Expression
 def evaluate(dir)
   results= []
   Find.find(dir) do |p|
     next unless File.file?(p)
     results << p
   end
   results
 end
end

class Not < Expression
 def initialize(expression)
   @expression = expression
 end

 def evaluate(dir)
   All.new.evaluate(dir) - @expression.evaluate(dir)
 end
end


class Bigger < Expression
 def initialize(size)
   @size = size
 end

 def evaluate(dir)
   results = []
   Find.find(dir) do |p| 
     next unless File.file?(p)
     results << p if( File.size(p) > @size)
   end
   results
 end
end

class Writable < Expression
 def evaluate(dir)
   results = []
   Find.find(dir) do |p| 
     next unless File.file?(p)
     results << p if( File.writable?(p) )
   end
   results
 end
end

class Or < Expression
 def initialize(expression1, expression2)
   @expression1 = expression1
   @expression2 = expression2
 end

 def evaluate(dir)
   result1 = @expression1.evaluate(dir)
   result2 = @expression2.evaluate(dir)
   (result1 + result2).sort.uniq
 end
end

class And < Expression
 def initialize(expression1, expression2)
   @expression1 = expression1
   @expression2 = expression2
 end

 def evaluate(dir)
   result1 = @expression1.evaluate(dir)
   result2 = @expression2.evaluate(dir)
   (result1 & result2)
 end
end
