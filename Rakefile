Dirs = Dir['[0-9][0-9]'].sort

def build_target( target )
  Dirs.each do |dir|
    sh "cd #{dir}; rake #{target}"
  end
end

task :default do 
  build_target( :default )
end

task :sniff do 
  build_target( :sniff )
end

task :clean do 
  build_target( :clean )
end
