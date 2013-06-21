

require 'ex6_std_observer'


class Employee

 def salary=(new_salary)
    old_salary = @salary
    @salary = new_salary
    changed if old_salary != new_salary
  end

  def title=(new_title)
    old_title = @title
    @title = new_title
    changed if old_title != new_title
  end

  def changes_complete
    notify_observers(self)
  end

end
