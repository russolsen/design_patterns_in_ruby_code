

require 'ex6_std_observer'


class Employee


  def salary=(new_salary)
    old_salary = @salary
    @salary = new_salary
    if old_salary != new_salary
      changed
      notify_observers(self)
    end
  end


  def title=(new_title)
    old_title = @title
    @title = new_title
    if old_title != new_title
      changed = true
      notify_observers(self)
    end
  end

end
