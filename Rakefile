Dirs = Dir['[0-9][0-9]'].sort

def build_target( target )
  Dirs.each do |dir|
    sh "cd #{dir}; rake #{target}"
  end
end

desc "Run all of the tests"
task :default do 
  build_target( :default )
end

task :sniff do 
  build_target( :sniff )
end

desc "Clean up after test run."
task :clean do 
  build_target( :clean )
end
