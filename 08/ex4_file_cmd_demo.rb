#!/usr/bin/env ruby

require '../example'
require 'ex4_file_cmd'

example %q{
cmds = CompositeCommand.new

cmds.add_command(CreateFile.new("file1.txt", "hello world\n"))
cmds.add_command(CopyFile.new("file1.txt", "file2.txt"))
cmds.add_command(DeleteFile.new("file1.txt"))

cmds.execute
puts cmds.description
}
