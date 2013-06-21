require 'finder'
require 'singleton'
require 'fileutils'

require 'pp'


class DataSource
  attr_reader :directory, :finder_expression

  def initialize(directory, finder_expression)
    @directory = directory
    @finder_expression = finder_expression
  end

  def backup(backup_directory)
    puts backup_directory
    files=@finder_expression.evaluate(@directory)
    files.each do |file|
      backup_file( file, backup_directory)
    end
  end

  def backup_file( file, backup_directory)
    backup_file = File.join(backup_directory, file)
    FileUtils.mkdir_p( File.dirname(backup_file) )
    FileUtils.cp( file, backup_file)
  end
end


class Backup
  attr_accessor :backup_directory, :interval
  attr_reader :data_sources

  def initialize
    @data_sources = []
    @backup_directory = '/backup'
    @interval = 60
    yield(self) if block_given?
    PackRat.instance.register_backup(self)
  end

  def backup(dir, find_expression=All.new)
    @data_sources << DataSource.new(dir, find_expression)
  end

  def to(backup_directory)
    @backup_directory = backup_directory
  end

  def interval(minutes)
    @interval = minutes
  end

  def run
    while true
      this_backup_dir = Time.new.ctime.tr(" :","_")
      this_backup_path = File.join(backup_directory, this_backup_dir)
      @data_sources.each {|source| source.backup(this_backup_path)}
      sleep @interval*60  
    end
  end
end

class PackRat
  include Singleton

  def initialize
    @backups = []
  end

  def register_backup(backup)
    @backups << backup
  end

  def run
    threads = []
    @backups.each do |backup|
      threads << Thread.new {backup.run}
    end
    threads.each {|t| t.join}
  end

end

eval File.read('backup.pr')
PackRat.instance.run
  

  
