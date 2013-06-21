#!/usr/bin/env ruby
require '../example'

example %q{
h = {}
h['first_name'] = 'Albert'
h['last_name'] = 'Einstein'

h['first_name']     # is 'Albert'
h['last_name']      # is Einstein



puts h['first_name']
puts h['last_name']
}

example %q{
h = {'first_name' => 'Albert', 'last_name' => 'Einstein'}
}

example %q{
h = { :first_name => 'Albert', :last_name => 'Einstein' }
}

