task :init

task :default => :init do
  Dir['*demo.rb'].each do |f|
    sh "ruby  #{f}"
  end
  Dir['*_test.rb'].each do |f|
    sh "ruby #{f}"
  end
end

task :clean
