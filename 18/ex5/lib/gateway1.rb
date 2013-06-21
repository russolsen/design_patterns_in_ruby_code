require 'message'
require 'erb'

class MessageGateway
  def initialize
    load_classes(File.join("adapter", "*.rb"))
    load_classes(File.join("auth", "*.rb"))
  end

  def process_message(message)
    if authorized?(message)
      send_message(message)
    else
      puts "Unauthorized"
    end
  end

  def worm_case(string)
    tokens = string.split('.')
    tokens.map! {|t| t.downcase}
    tokens.join('_dot_')
  end

  def authorized?(message)
    authorizer = authorizer_for(message)
    user_method = worm_case(message.from) + '_authorized?'
    if authorizer.respond_to?(user_method)
      return authorizer.send(user_method, message)
    end
    authorizer.authorized?(message)
  end
    
  def send_message(message)
      adapter = adapter_for(message)
      adapter.send_message(message)
  end

  def adapter_for(message)
    protocol = message.to.scheme
    adapter_class = protocol.capitalize + "Adapter"
    adapter_class = self.class.const_get(adapter_class)
    adapter_class.new
  end

  def camel_case(string)
    tokens = string.split('.')
    tokens.map! {|t| t.capitalize}
    tokens.join('Dot')
  end

  def authorizer_for(message)
    to_host = message.to.host || 'default'
    authorizer_class = camel_case(to_host) + "Authorizer"
    authorizer_class = self.class.const_get(authorizer_class)
    authorizer_class.new
  end


  def load_classes(pattern)
   lib_dir = File.dirname(__FILE__)
   full_pattern = File.join(lib_dir, pattern)
   Dir.glob(full_pattern).each {|file| puts "loading #{file}"; require file }   
  end
end

mess = Message.new("russ.olsen", 'log://russolsen.com/message.out', "hello out there\n")

mg = MessageGateway.new
mg.process_message(mess)
