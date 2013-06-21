#!/usr/bin/env ruby
require '../example'

example %q{

def create_car( model, convertible=false)
  # ...

  puts "model: #{model} convertible: #{convertible}"

end

create_car('sedan')
create_car('sports car', true)
create_car('minivan', false)
}


example %q{
def add_students(*names)
  for student in names
    puts "adding student #{student}"
  end
end

add_students( "Fred Smith", "Bob Tanner" )
}


example %q{
def describe_hero(name, *super_powers)
  puts "Name: #{name}"
  for power in super_powers
    puts "Super power: #{power}"
  end
end

describe_hero( "Batman" )
describe_hero( "Flash", "speed" )
describe_hero( "Superman", "can fly", "x-ray vision", "invulnerable" )
}
