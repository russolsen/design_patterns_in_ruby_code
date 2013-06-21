#!/usr/bin/env ruby

require '../example'

require 'ex1_files'


example %q{

expr_all = All.new
files = expr_all.evaluate('test_dir')

pp files
}


example %q{

expr_mp3 = FileName.new('*.mp3')
mp3s = expr_mp3.evaluate('test_dir')

pp mp3s
}


example %q{
expr_mp3 = FileName.new('*.mp3')

other_mp3s = expr_mp3.evaluate('music_dir')

pp other_mp3s
}

example %q{
expr_not_writable = Not.new( Writable.new )
readonly_files = expr_not_writable.evaluate('test_dir')


pp readonly_files 
}


example %q{
small_expr = Not.new( Bigger.new(1024) )
small_files = small_expr.evaluate('test_dir')

pp small_files
}


example %q{
not_mp3_expr = Not.new( FileName.new('*.mp3') )
not_mp3s = not_mp3_expr.evaluate('test_dir')

pp not_mp3s
}

example %q{
big_or_mp3_expr = Or.new( Bigger.new(1024), FileName.new('*.mp3') )
big_or_mp3s = big_or_mp3_expr.evaluate('test_dir')

pp big_or_mp3s

}

example %q{
complex_expression = And.new( 
                        And.new(Bigger.new(1024),
                                FileName.new('*.mp3')),
                        Not.new(Writable.new ))

pp \
complex_expression.evaluate('test_dir')
complex_expression.evaluate('/tmp')
}

