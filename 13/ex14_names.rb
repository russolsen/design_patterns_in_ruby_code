
class PDFReader
end

class HTMLReader
end

class RTFReader
end

class PDFWriter
end

class HTMLWriter
end

class RTFWriter
end

class IOFactory
  def initialize(format)
    @reader_class = eval("#{format}Reader")
    @writer_class = eval("#{format}Writer")
  end

  def new_reader
    @reader_class.new
  end

  def new_writer
    @writer_class.new
  end
end
