

class FileAdapter
  def send_message(message)
    path = message.to_path
    path.slice!(0)
    File.open(path, "w") { |f| f.write(message.body) }
  end
end
