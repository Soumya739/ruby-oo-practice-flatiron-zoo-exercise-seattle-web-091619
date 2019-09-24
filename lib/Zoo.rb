class Zoo
    attr_accessor :name, :location
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        zoo_instance = Location.all.select {|location| location.zoo == self}
        zoo_instance.map {|object| object.animal}
    end

    def animal_species
        all_species = self.animals.collect {|animal| animal.species}
        all_species.uniq
    end

    def find_by_species(species)
        self.animals.select { |animal| animal.species == species}
    end

    def animal_nickname 
        self.animals.map { |animal| animal.nickname}
    end

    def self.find_by_location(place)
        @@all.select { |zoo| zoo.location == place}
    end
end
