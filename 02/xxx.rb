#!/usr/bin/env ruby
require '../example'

2                     # a Fixnum
437                   # a Fixnum
2**437                # very definitely a big, Bignum
123456789000000000000 # Another Bignum
1234567890/1234567890 # Divide 2 Bignums, and get 1, a Fixnum

raise 'error' unless (2).class == Fixnum
raise 'error' unless (437).class == Fixnum
raise 'error' unless (2**437).class == Bignum
raise 'error' unless (123456789000000000000).class == Bignum
raise 'error' unless (1234567890/1234567890).class == Fixnum
