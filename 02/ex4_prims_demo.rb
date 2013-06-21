#!/usr/bin/env ruby
require '../example'

example_expected Fixnum, %q{ 7.class                      # Gives you the class Fixnum }
example_expected Bignum,  %q{ 88888888888888888888.class  # Gives you the class Bignum }
example_expected Float,   %q{ 3.14159.class               # Gives you the class Float }

example_expected 4,   %q{3.7.round         # gives us 4.0}
example_expected 3,   %q{3.7.truncate      # gives us 3}
example_expected 123, %q{-123.abs          # absolute value, 123}
example_expected 2,   %q{1.succ            # successor, or next number, 2} 

example_expected true,  %q{'hello'.instance_of?(String)  # true}
example_expected false, %q{'hello'.nil?                  # false}

example_expected '44',    %q{44.to_s         # returns a two character string '44'}
example_expected 'hello', %q{'hello'.to_s    # A fairly boring conversion, returns 'hello'}
