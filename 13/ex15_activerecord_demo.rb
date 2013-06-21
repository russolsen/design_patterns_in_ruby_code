#!/usr/bin/env ruby
#
require '../example'

example %q{

class Base
  # Lots of non adapter related code removed...
end


# MySQL adapter

class Base
  def self.mysql_connection(config)
    # Create and return a new MySQL connection, using
    # the user name, password, etc stored in the 
    # config hash...


    puts('mysql connection')

  end
end

# Oracle adapter

class Base
  def self.oracle_connection(config)
    # Create a new Oracle connection ...
 

    puts('oracle connection')

  end
end

config = { :adapter => 'oracle' }

adapter = "mysql"
method_name = "#{adapter}_connection"
Base.send(method_name, config)
}
