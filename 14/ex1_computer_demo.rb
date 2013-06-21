#!/usr/bin/env ruby

require '../example'

require 'ex1_computer'


example %q{

# Build a fast computer with lots of memory...

motherboard = Motherboard.new(TurboCPU.new, 4000)

# ... and a hard drive, CD writer and a DVD

drives = []
drives << Drive.new(:hard_drive, 200000, true)
drives << Drive.new(:cd, 760, true)
drives << Drive.new(:dvd, 4700, false)

computer = Computer.new(:lcd, motherboard, drives)


pp computer
}

