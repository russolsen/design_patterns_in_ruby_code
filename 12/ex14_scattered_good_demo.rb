#!/usr/bin/env ruby

require '../example'


class PrefReader
  def read(connection)
    puts "reader, reading prefs from #{connection}"
  end
end

class PrefWriter
  def write(connection, prefs)
    puts "writer, writing #{prefs} to #{connection}"
  end
end

require 'singleton'

class DatabaseConnectionManager
  include Singleton

  def get_connection
    # return the database connection...
  end
end

example %q{

require 'singleton'


class PreferenceManager
  def initialize
    @reader = PrefReader.new
    @writer = PrefWriter.new
    @preferences = { :display_splash=>false, :background_color=>:blue }
  end

  def save_preferences
    preferences = {}
    # Preference are in 
    @writer.write(DatabaseConnectionManager.instance, @preferences)
  end

  def get_preferences
    @preferences = @reader.read(DatabaseConnectionManager.instance)
  end
end

pref_manager = PreferenceManager.new
pref_manager.get_preferences
pref_manager.save_preferences

}
