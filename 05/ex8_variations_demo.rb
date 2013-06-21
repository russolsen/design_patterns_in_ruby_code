#!/usr/bin/env ruby

require 'pp'

require '../example'
require 'ex7_observer_proc'

class DummyObserver

  def update(*args)
    puts "update called with: "
    pp args
  end

  def update_salary(*args)
    puts "update salary called with: "
    pp args
  end

  def update_title(*args)
    puts "update title called with: "
    pp args
  end
end

example %q{

old_salary = 50000
new_salary = 60000
observer = DummyObserver.new
old_title = 'janitor'
new_title = 'vice president'

observer.update(self, :salary_changed, old_salary, new_salary)

observer.update_salary(self, old_salary, new_salary)

observer.update_title(self, old_title, new_title)
}
