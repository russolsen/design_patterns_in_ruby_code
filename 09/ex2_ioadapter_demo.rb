#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex1_encrypter'
require_relative 'ex2_ioadapter'

example %q{
encrypter = Encrypter.new('XYZZY')
reader= StringIOAdapter.new('We attack at dawn')
writer=File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)

writer.close
}
