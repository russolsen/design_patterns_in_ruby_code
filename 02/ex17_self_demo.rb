#!/usr/bin/env ruby
require '../example'

require_relative 'ex13_account'
require_relative 'ex15_manual_accessor'


example %q{
class SelfCentered
  def talk_about_me
    puts "Hello I am #{self}"
  end
end

conceited = SelfCentered.new
conceited.talk_about_me
}
