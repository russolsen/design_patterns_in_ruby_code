require 'pp'

class LogAdapter
  def send_message(message)
    pp message
  end
end
