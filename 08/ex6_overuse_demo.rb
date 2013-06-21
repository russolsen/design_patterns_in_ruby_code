#!/usr/bin/env ruby

require '../example'

open("foo.dat", "w") {}

example %q{

class FileDeleteCommand

  def initialize(path)
    @path = path
  end

  def execute
    File.delete(@path)
  end

end

fdc = FileDeleteCommand.new('foo.dat')
fdc.execute

}

open("foo.dat", "w") {}

example %q{
File.delete('foo.dat')
}
