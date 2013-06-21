
def member_of_composite?(object, composite_name)
  public_methods = object.public_methods
  public_methods.include?("parent_#{composite_name}".to_sym)
end
