
require 'webrick'
include WEBrick

s = HTTPServer.new(
  :Port            => 7000
)

class HelloServlet < HTTPServlet::AbstractServlet
  def do_POST(req, res)
    puts req
  end
end

s.mount("/", HelloServlet)

trap("INT"){ s.shutdown }
s.start

