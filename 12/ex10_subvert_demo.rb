#!/usr/bin/env ruby

require '../example'

example %q{
require 'singleton'

class Manager
  include Singleton

  def manage_resources
    puts("I am managing my resources")
  end
end

begin
m = Manager.new
rescue NoMethodError => e
  puts e
end


class Manager
  public_class_method :new
end


m = Manager.new
puts "new manager: #{m}"
}

