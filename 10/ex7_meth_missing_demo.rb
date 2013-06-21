#!/usr/bin/env ruby

require '../example'

example %q{

class TestMethodMissing
  def hello
    puts "Hello from a real method"
  end

  def method_missing(name, *args)
    puts "Warning, warning, unknown method called: #{name}"
    puts "Arguments: #{args.join(' ')}"
  end
end


tmm=TestMethodMissing.new
tmm.hello
tmm.hi(1, 2, 3)
tmm.goodbye('cruel', 'world')
}

example %q{
tmm=TestMethodMissing.new


tmm.send(:hello)
tmm.send(:goodbye, 'cruel', 'world')
}
