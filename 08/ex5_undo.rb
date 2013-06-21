require "fileutils"

class Command
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def execute
  end

  def unexecute
  end
end

class CreateFile < Command
  def initialize(path, contents)
    super "Create file: #{path}"
    @path = path
    @contents = contents
  end

  def execute
    f = File.open(@path, "w")
    f.write(@contents)
    f.close
  end

  def unexecute
    File.delete(@path)
  end
end

class DeleteFile < Command
  def initialize(path)
    super "Delete file: #{path}"
    @path = path
  end

  def execute
    if File.exists?(@path)
      @contents = File.read(@path)
    end
    f = File.delete(@path)
  end

  def unexecute
    if @contents
      f = File.open(@path,"w")
      f.write(@contents)
      f.close
    end
  end
end

class CopyFile < Command
  def initialize(source, target)
    super "Copy file: #{source} to #{target}"
    @source = source
    @target = target
  end

  def execute
    if File.exists?(@target)
      @contents = File.open(@target).read
    end
    FileUtils.copy(@source, @target)
  end

  def unexecute
    File.delete(@target)
    if @contents
      f = File.open(@target,"w")
      f.write(@contents)
      f.close
    end
  end
end

#
# A composite command.
#
class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(cmd)
    @commands << cmd
  end

  def execute
    @commands.each { |cmd| cmd.execute }
  end

  # ...

  def unexecute
    @commands.reverse.each { |cmd| cmd.unexecute }
  end

  # ...

  def description
    description = ''
    @commands.each { |cmd| description += cmd.description + "\n" }
    return description
  end
end
