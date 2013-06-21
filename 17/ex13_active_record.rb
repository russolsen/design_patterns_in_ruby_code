

module ActiveRecord
  class Base
    def self.has_many(other)
      puts "#{self} has many #{other}"
    end

    def self.belongs_to(other)
      puts "#{self} belongs to #{other}"
    end

    def self.has_one(other)
      puts "#{self} has one #{other}"
    end
  end
end


class  Animal < ActiveRecord::Base
  has_one :description
end

class Description < ActiveRecord::Base
  belongs_to :animal
end

class  Animal < ActiveRecord::Base
  has_one :description
  belongs_to :species
end

class Species < ActiveRecord::Base
  has_many :animals
end
