#!/usr/bin/env ruby

class TestObserver
  attr_reader :subjects

  def initialize
    @subjects = []
  end

  def update(subject)
    @subjects << subject
  end
end

module SubjectTestMethods

  def test_add_delete
    subject = Employee.new('fred', 'title', 1000 )
    observer1 = TestObserver.new
    assert observer1.subjects.empty?

    subject.add_observer(observer1)
    subject.salary=2000
    assert_equal 1, observer1.subjects.size
    assert_equal subject, observer1.subjects[0]

    observer2 = TestObserver.new
    subject.add_observer(observer2)
    subject.salary=3000
    assert_equal 2, observer1.subjects.size
    assert_equal 1, observer2.subjects.size

    subject.delete_observer(observer2)
    subject.salary=4000
    assert_equal 3, observer1.subjects.size
    assert_equal 1, observer2.subjects.size
  end

  def test_employee
    fred = Employee.new('fred', 'title', 1000 )
    observer = TestObserver.new
    assert observer.subjects.empty?

    fred.add_observer(observer)
    fred.salary = 2000
    fred.notify_observers
    assert_equal 2000, observer.subjects[0].salary
  end

end
