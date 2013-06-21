
require 'net/http'

class HttpAdapter

  def send(message)
    
    Net::HTTP.start(message.to.host, message.to.port) do |http|
      http.post(message.to.path, message.text)
    end

  end

end
