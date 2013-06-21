#!/usr/bin/env ruby

require '../example'
require 'ex1_encrypter'
require 'ex2_ioadapter'

example %q{
encrypter = Encrypter.new('XYZZY')
reader= StringIOAdapter.new('We attack at dawn')
writer=File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)

writer.close
}
