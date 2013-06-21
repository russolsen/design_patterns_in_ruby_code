
def adapter_for(message)
  protocol = message.to.scheme
  return FileAdapter.new if protocol == 'file'
  return HttpAdapter.new if protocol == 'http'
  return SmtpAdapter.new if protocol == 'smtp'
  nil
end
