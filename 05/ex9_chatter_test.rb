#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex9_chatter'

class Observer

  attr_reader :subjects

  def initialize
    @subjects = []
  end

  def update(subject)
    @subjects << subject
  end
end
    

class LessChattyObserverTest < Test::Unit::TestCase

  def test_salary_chattyness
    fred = Employee.new("fred", "title", 30000)
    observer = Observer.new
    fred.add_observer(observer)

    fred.salary = 30000
    assert_equal 0, observer.subjects.size

    fred.salary = 30001
    assert_equal fred, observer.subjects[0]
  end

  def test_title_chattyness
    fred = Employee.new("fred", "title", 30000)
    observer = Observer.new
    fred.add_observer(observer)

    fred.title = 'title'
    assert_equal 0, observer.subjects.size

    fred.salary = 'president'
    assert_equal fred, observer.subjects[0]
  end

  
end



