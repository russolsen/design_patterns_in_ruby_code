
class NilClass

  def method_missing(method_name, *args, &block)
    raise "You have a nil object where you didn't expect it"
  end

end

foo = nil
foo.xxx
foo.do_something()
