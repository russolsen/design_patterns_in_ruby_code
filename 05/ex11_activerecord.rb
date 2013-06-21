require 'rubygems'
require 'activerecord'

class EmployeeObserver < ActiveRecord::Observer
  def after_create(employee)
    # New employee record created.
  end

  def after_update(employee)
    # Employee record updated
  end

  def after_destroy(employee)
    # Employee record deleted.
  end
end
