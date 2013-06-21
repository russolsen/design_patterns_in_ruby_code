require 'stringio'
require 'pp'

def run_fragment(code)
  out_io = $stdout = StringIO.new
  result = ''
  begin
    result = eval code
  ensure
    $stdout = STDOUT
  end
  [result, out_io.string]
end

def example(code)
  run_example(0, code)
end

def example_trunc(code)
  run_example(5, code)
end

def example_expected(expected_value, code)
  result, output = run_fragment(code)
  raise 'unexpected value' unless result == expected_value
  puts code
end

def example_true(code)
  result, output = run_fragment(code)
  raise 'unexpected value' unless result
  puts code
end

def example_false(code)
  result, output = run_fragment(code)
  raise 'unexpected value' if result
  puts code
end

def run_example(max_output_lines, code)
  result, output = run_fragment(code)
  print_output(code, max_output_lines, output)
  [result, output]
end

def print_output(code, max_output_lines, output)
  puts "==========================="
  puts code
  puts
  puts "==="
  puts
  if max_output_lines <= 0
    puts output
  else
    count = 0
    output.each_line do |line|
      puts line
      count += 1
      break if count >= max_output_lines
    end
    puts("...")
  end
  puts
end

def assert(fact, mesg='assertion failed')
  raise mesg unless fact
end

def assert_false(fact, mesg='assertion failed')
  raise mesg if fact
end

def expect_error(code)
  output = ''
  result = ''
  begin
    result, output = run_fragment(code)
  rescue Exception => e
    output += "\n"
    output += e.to_s
    print_output(code, 0, output )
  else
    print_output(code, 0, output )
    raise "*** No exception raised ***"
  end
end

