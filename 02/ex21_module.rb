
module HelloModule
  def say_hello
    puts 'Hello out there.'
  end
end

class TryIt
  include HelloModule
end


module Chatty
  def say_hi
    puts("Hello, my name is #{name}")
    puts("My job title is #{title}")
    puts("I work in the #{department} department")
  end
end

class Employee
  include Chatty

  def name
    'Fred'
  end

  def title
    'Janitor'
  end

  def department
    'Maintenance'
  end
end
