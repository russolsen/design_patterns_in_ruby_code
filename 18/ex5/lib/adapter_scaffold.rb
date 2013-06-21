
protocol_name = ARGV[0]
class_name = protocol_name.capitalize + 'Adapter'
file_name = File.join('adapter', protocol_name + '.rb')

scaffolding = %Q{

class #{class_name}

  def send_message(message)
    # code to send the message
  end

end
}

File.open(file_name, 'w') do |f|
  f.write(scaffolding)
end
