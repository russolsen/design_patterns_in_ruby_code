


class ComputerBuilder

  def computer
    raise "Not enough memory" if @computer.motherboard.memory_size < 250
    raise "Too many drives" if @computer.drives.size > 4
    hard_disk = @computer.drives.find {|drive| drive.type == :hard_disk}


    if ! hard_disk
      raise "No room to add hard disk." if @computer.drives.size >= 4
      add_hard_disk(100000)
    end


    @computer       
  end  

end
