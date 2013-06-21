#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex5_undo'

class UndoableFileCommandTest < Test::Unit::TestCase

  NEW_FILE = 'new_test_file.txt'
  NEW_FILE2 = 'new_test_file2.txt'
  EXISTING_FILE = 'existing_test_file.txt'
  
  def setup
    File.delete(NEW_FILE) if File.exists?(NEW_FILE)
    File.delete(NEW_FILE2) if File.exists?(NEW_FILE2)
    File.open(EXISTING_FILE, 'w') { |f| f.print "hello" }
  end
  
  def teardown
    File.delete(NEW_FILE) if File.exists?(NEW_FILE)
    File.delete(EXISTING_FILE) if File.exists?(NEW_FILE)
  end

  def test_create_file
    assert(! File.exists?(NEW_FILE))
    cf = CreateFile.new(NEW_FILE, 'hello world')
    cf.execute
    assert(File.exists?(NEW_FILE))
    assert_equal('hello world', File.read(NEW_FILE)) 
    cf.unexecute
    assert(! File.exists?(NEW_FILE))
  end
  
  def test_delete_file
    assert(File.exists?(EXISTING_FILE))
    df = DeleteFile.new(EXISTING_FILE)
    df.execute
    assert(!File.exists?(EXISTING_FILE))
    df.unexecute
    assert('hello', File.read(EXISTING_FILE))
  end
  
  def test_copy_file
    assert(! File.exists?(NEW_FILE))
    assert(File.exists?(EXISTING_FILE))
    cf = CopyFile.new(EXISTING_FILE, NEW_FILE)
    cf.execute
    assert_equal(File.read(EXISTING_FILE), File.read(NEW_FILE))
    cf.unexecute
    assert(! File.exists?(NEW_FILE))
    assert(File.exists?(EXISTING_FILE))
  end
  
  def test_composite_cmd
    create = CreateFile.new(NEW_FILE, 'new stuff')
    copy = CopyFile.new(NEW_FILE, NEW_FILE2)
    delete = DeleteFile.new(NEW_FILE) 
    comp = CompositeCommand.new
    comp.add_command(create)
    comp.add_command(copy)
    comp.add_command(delete)
    comp.execute
    assert(!File.exists?(NEW_FILE))
    assert_equal('new stuff', File.read(NEW_FILE2))
    comp.unexecute
    assert(!File.exists?(NEW_FILE))
    assert(!File.exists?(NEW_FILE2))
    
  end

end

