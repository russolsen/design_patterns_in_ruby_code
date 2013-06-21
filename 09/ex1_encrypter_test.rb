#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_encrypter'

class EncrypterTest < Test::Unit::TestCase

  def setup
    File.delete('cypher') if File.exists?('cypher')
    File.delete('new_message') if File.exists?('new_message')
  end

  def test_round_trip
    encrypter = Encrypter.new("a key")
    input = File.open('message.txt')
    File.open('cypher', 'w') {|output| encrypter.encrypt(input, output)}

    assert ! same_contents?('message.txt', 'cypher')

    input = File.open('cypher')
    File.open('new_message', 'w') {|output| encrypter.encrypt(input, output)}
    encrypter.encrypt(input, 'new_message')

    assert same_contents?('message.txt', 'new_message')
  end

  def same_contents?(path1, path2)
    File.read(path1) == File.read(path2)
  end

end




