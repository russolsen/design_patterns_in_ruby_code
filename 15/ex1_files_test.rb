#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_files'



class FileExpressionTest < Test::Unit::TestCase

  def test_filename_expression
    expr_mp3 = FileName.new("*.mp3")
    mp3s = expr_mp3.evaluate("dir1").sort
    assert_equal ['dir1/big.mp3', 'dir1/small.mp3'], mp3s

    mp3_subdir = expr_mp3.evaluate("dir2").sort
    subdir_contents = ['dir2/big.mp3', 'dir2/small.mp3', 'dir2/subdir/other.mp3'].sort
    assert_equal subdir_contents, mp3_subdir

    nothing = FileName.new("*.zzzzzz").evaluate('dir1').sort
    assert_equal [], nothing
  end

  def test_bigger_expression
    big = Bigger.new(1000)
    big_files = big.evaluate('dir1').sort
    assert_equal ['dir1/big.mp3'].sort, big_files

    big_files = big.evaluate('dir2').sort
    assert_equal ['dir2/big.mp3', 'dir2/subdir/other.mp3'].sort, big_files
  end

  def test_all
    all = All.new
    expected = ["dir1/small.mp3", "dir1/big.mp3", "dir1/small2.txt", "dir1/small1.txt"].sort
    assert_equal expected, all.evaluate('dir1').sort
    expected = ["dir2/big.mp3", "dir2/small.mp3", "dir2/small1.txt", "dir2/small2.txt",
                "dir2/subdir/other.mp3", "dir2/subdir/small.jpg"].sort
    assert_equal expected, all.evaluate('dir2').sort
    assert_equal [], all.evaluate('dir3')
  end


  def test_not
    all_expr = All.new
    all_files = all_expr.evaluate('dir2').sort

    none_expr = Bigger.new(999999999)

    mp3_expr = FileName.new('*.mp3')
    mp3_files = mp3_expr.evaluate('dir2').sort

    not_mp3_expr = Not.new( mp3_expr )
    not_mp3_files = not_mp3_expr.evaluate('dir2').sort

    
    assert_equal [], Not.new(All.new).evaluate('dir2')

    assert_equal all_files, Not.new(none_expr).evaluate('dir2').sort

    assert_equal not_mp3_files, (all_files - mp3_files).sort
    assert_equal mp3_files, Not.new(Not.new(mp3_expr)).evaluate('dir2').sort
  end

  def test_or
    all_expr = All.new
    all_files = all_expr.evaluate('dir2').sort

    none_expr = Bigger.new(999999999)

    assert_equal all_files, Or.new(all_expr, none_expr).evaluate('dir2').sort

    assert_equal [], Or.new(none_expr, none_expr).evaluate('dir2').sort

    assert_equal all_files, Or.new(all_expr, all_expr).evaluate('dir2').sort

    mp3_or_jpg = Or.new( FileName.new('*.mp3'), FileName.new('*.jpg') )

    expected = ["dir2/big.mp3", "dir2/small.mp3", 
                "dir2/subdir/other.mp3", "dir2/subdir/small.jpg"].sort

    assert_equal expected, mp3_or_jpg.evaluate('dir2').sort
  end

  def test_and
    all_expr = All.new
    all_files = all_expr.evaluate('dir2').sort
    mp3_expr = FileName.new("*.mp3")

    none_expr = Bigger.new(999999999)

    assert_equal all_files, And.new(all_expr, all_expr).evaluate('dir2').sort

    assert_equal [], And.new(all_expr, none_expr).evaluate('dir2').sort

    assert_equal [], And.new( FileName.new('*.mp3'), FileName.new('*.jpg') ).evaluate('dir2').sort

    mp3_files = mp3_expr.evaluate('dir2').sort
    assert_equal mp3_files, And.new( mp3_expr, all_expr).evaluate('dir2').sort
  end
 

end




#expr=And.new(Not.new(Directories.new), Not.new( Files.new ))

# expr=And.new( Bigger.new(5000), FileName.new("*.rtf"))

#puts "jpg..."
#expr_jpg = FileName.new("*.jpg")
#expr_jpg.evaluate("test_dir").each {|f| puts f }
#
#puts "++++++++++++ bigger +++++++++"
#expr_big = Bigger.new(10000)
#expr_big.evaluate("test_dir").each {|f| puts f }
#
#puts "------------ writable ------------"
#expr_write = Writable.new
#expr_write.evaluate("test_dir").each {|f| puts f }
#
#
#puts "----------- not writable ------"
#expr_readonly = Not.new( Writable.new )
#pp expr_readonly.evaluate("test_dir")
#
#
#puts "===================all"
#expr_all = All.new
#expr_all.evaluate("test_dir").each {|f| puts f }
#
#puts "----- smaller than 1 k -----------"
#small_expr = Not.new( Bigger.new(1024) )
#small_files = small_expr.evaluate("test_dir")
#
#puts "--------- not mp3s ------"
#not_mp3_expr = Not.new( FileName.new("*.mp3") )
#not_mp3s = not_mp3_expr.evaluate("test_dir")
#
#puts "========= big or mp3"
#
#big_or_mp3_expr = Or.new( Bigger.new(1024), FileName.new("*.mp3") )
#big_or_mp3s = big_or_mp3_expr.evaluate("test_dir")
#pp big_or_mp3s
#
#puts "===========big mp3 files which are not writable:"
#complex_expression = And.new( 
#                        And.new( Bigger.new(1024), FileName.new("*.mp3") ),
#                        Not.new( Writable.new ) )
#
#complex_expression.evaluate("test_dir")
#complex_expression.evaluate("/tmp")
#
#
