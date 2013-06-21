#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'fileutils'

require 'finder'
require 'ex3_packrat'

#
# Hijack the Time.ctime method so that it always produces 
# a current time of 'current' -- this bit of vandalism makes
# the backup class put its backups in the same place each time.
#
class Time
  def ctime
    'current'
  end
end

class PackRatClassTest < Test::Unit::TestCase

  def setup
    FileUtils.rm_rf 'backup_test'
  end

  def test_datasource
    ds = DataSource.new('dir1', all)
    ds.backup('backup_test')
    assert_is_backup_of('backup_test', 'dir1')
  end

  def test_backup
    Backup.instance.data_sources <<  DataSource.new('dir1', all)
    Backup.instance.backup_directory = 'backup_test'
    Backup.instance.backup_files
    assert_is_backup_of('backup_test/current', 'dir1')
  end


  def assert_is_backup_of( backup_dir, original_dir )
    file_list = all.evaluate(original_dir)
    file_list.each { |file| assert FileUtils.identical?(file, "#{backup_dir}/#{file}") }
  end
  
end
