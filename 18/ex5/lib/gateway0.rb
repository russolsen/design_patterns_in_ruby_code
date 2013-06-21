require 'message'

class MessageGateway
  def initialize
    load_adapters
  end

  def process_message(message)
    adapter = adapter_for(message)
    adapter.send_message(message)
  end

  def adapter_for(message)
    protocol = message.to.scheme
    adapter_class = protocol.capitalize + 'Adapter'
    adapter_class = self.class.const_get(adapter_class)
    adapter_class.new
  end

  def load_adapters
   lib_dir = File.dirname(__FILE__)
   full_pattern = File.join(lib_dir, 'adapter', '*.rb')
   Dir.glob(full_pattern).each {|file| require file }   
  end
end

mess = Message.new('russ.olsen', 'log://russolsen.com/foo/bar', "hello out there\n")

mg = MessageGateway.new
mg.process_message(mess)

mess = Message.new('russ.olsen', "file:///msg.out", "hello out there\n")
mg.process_message(mess)
