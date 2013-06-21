class CompositeBase

  # ...

  def self.member_of(composite_name)
    attr_name = "parent_#{composite_name}"

    raise 'Method redefinition' if instance_methods.include?(attr_name)

    code = %Q{
      attr_accessor :#{attr_name}
    }
    class_eval(code)
  end

  # ...

end
