
task :init

task :default => :init do
  Dir['*demo.rb'].each do |f|
    sh "ruby -I . #{f}"
  end
  Dir['*_test.rb'].each do |f|
    sh "ruby -I . #{f}"
  end
end
