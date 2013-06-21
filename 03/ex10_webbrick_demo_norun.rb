#!/usr/bin/env ruby

require '../example'

example %q{

require 'webrick'

class HelloServer < WEBrick::GenericServer
  def run(socket)
    socket.print('Hello TCP/IP world')
  end
end





s = HelloServer.new(:Port => 2000)
trap("INT"){ s.shutdown}
s.start

}
