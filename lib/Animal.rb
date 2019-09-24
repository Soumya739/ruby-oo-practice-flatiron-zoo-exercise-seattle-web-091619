class Animal
    attr_accessor :species, :weight, :nickname
    @@all = []
    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self 
    end
    
    def self.all
        @@all
    end

    def zoo
        Location.all.each do |location| 
            if location.animal == self  
                @zoo = location.zoo 
            end
        end
        @zoo
        # anim_location = Location.all.select {|location| location.animal == self}
        # anim_location.select {|place| place.zoo}
    end

end
