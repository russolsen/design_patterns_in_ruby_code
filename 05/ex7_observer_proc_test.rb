#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'stringio'

require 'ex7_observer_proc'

class ProcBasedObserverTest < Test::Unit::TestCase

  def test_add_delete
    subject = Employee.new('fred', 'title', 1000 )
    subjects1=[]
    subjects2=[]

    observer1 = lambda {|s| subjects1 << s}

    subject.add_observer(&observer1)
    subject.salary=2000
    assert_equal 1, subjects1.size
    assert_equal subject, subjects1[0]

    observer2 = lambda {|s| subjects2 << s}
    subject.add_observer(&observer2)
    subject.salary=3000
    assert_equal 2, subjects1.size
    assert_equal 1, subjects2.size

    subject.delete_observer(&observer2)
    subject.salary=4000
    assert_equal 3, subjects1.size
    assert_equal 1, subjects2.size
  end

  def test_employee
    fred = Employee.new('fred', 'title', 1000 )
    subjects = []

    fred.add_observer {|s| subjects << s}
    fred.salary = 2000
    fred.notify_observers
    assert_equal 2000, subjects[0].salary
  end

end



