#!/usr/bin/env ruby

require '../example'

require 'ex5_strategy_proc'

example %q$

a = ['russell', 'mike', 'john', 'dan', 'rob']


pp a.sort

pp      a.sort {|a,b| a.length <=> b.length}
$
