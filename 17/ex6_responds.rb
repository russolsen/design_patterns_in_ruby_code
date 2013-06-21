
def member_of_composite?(object, composite_name)
  object.respond_to?("parent_#{composite_name}")
end
