class Location
    attr_accessor :animal, :zoo
    @@all = []
    def initialize(animal, zoo)
        @animal = animal
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end
end