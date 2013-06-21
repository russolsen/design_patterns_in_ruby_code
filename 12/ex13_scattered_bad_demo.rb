#!/usr/bin/env ruby

require '../example'

example %q{

require 'singleton'

class DatabaseConnectionManager
  include Singleton

  def get_connection
    # return the database connection...
  end
end


class PreferenceManager
  def initialize
    @reader = PrefReader.new
    @writer = PrefWriter.new
    @preferences = { :display_splash=>false, :background_color=>:blue }
  end

  def save_preferences
    preferences = {}
    # Preference are in 
    @writer.write(@preferences)
  end

  def get_preferences
    @preferences = @reader.read
  end
end

class PrefWriter
  def write(preferences)
    connection = DatabaseConnectionManager.instance.get_connection
    # Write the preferences out
  end
end

class PrefReader
  def read
    connection = DatabaseConnectionManager.instance.get_connection
    # Read the preferences and return them...
  end
end

pref_manager = PreferenceManager.new
pref_manager.get_preferences
pref_manager.save_preferences

}
