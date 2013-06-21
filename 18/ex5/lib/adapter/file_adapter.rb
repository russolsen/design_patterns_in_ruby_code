
class FileAdapter

  def send_message(message)
    #
    # Get the path from the url
    # and remove the leading '/'
    #
    to_path = message.to.path
    to_path.slice!(0)

    File.open(to_path, "w") do |f|
      f.write(message.body)
    end
  end

end
