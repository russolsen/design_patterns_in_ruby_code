#!/usr/bin/env ruby

require '../../example'



require 'finder'

def backup(*args)
  pp args
end

alias to backup
alias interval backup 


example %q{

backup '/home/russ/bob\'s_documents'

backup "/home/russ/bob's_documents"
}


example %q{

#
# Back up Bob's directory
#
backup "/home/russ/bob's_documents"
}


example %q{
#
# A file finding expression for music files
#
music_files = file_name('*.mp3') | file_name('*.wav')

#
# Backup my two music directories
#
backup '/home/russ/oldies', music_files
backup '/home/russ/newies', music_files

to '/tmp/backup'

interval 60
}
