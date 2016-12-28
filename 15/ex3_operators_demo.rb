#!/usr/bin/env ruby

require_relative '../example'

require_relative 'ex1_files'
require_relative 'ex3_operators'


example %q{

 Or.new( 
  And.new(Bigger.new(2000), Not.new(Writable.new)),
  FileName.new('*.mp3'))

}


example %q{
(Bigger.new(2000) & Not.new(Writable.new)) | FileName.new('*.mp3')
}

example %q{
(bigger(2000) & except(writable) )  | file_name('*.mp3')
}

