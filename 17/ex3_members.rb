
class Tiger < CompositeBase
  member_of(:population)
  member_of(:classification)

  # Lots of code omitted ...
end

class Tree < CompositeBase
  member_of(:population)
  member_of(:classification)

  # Lots of code omitted ...
end


class Jungle < CompositeBase
  composite_of(:population)

  # Lots of code omitted ...
end

class Species < CompositeBase
  composite_of(:classification)

  # Lots of code omitted ...
end



class Region < CompositeBase
  composite_of(:population)

  # Lots of code omitted ...
end

class Genera < CompositeBase
  composite_of(:classification)

  # Lots of code omitted ...
end
