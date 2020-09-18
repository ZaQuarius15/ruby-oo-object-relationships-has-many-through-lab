class Genre

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs 
        Song.all.select do |song|
            song.genre == self
        end
    end

    def self.all
        @@all
    end

    def artists
        self.songs.each_with_object([]) do |song, gen_arts|
            gen_arts << song.artist
        end
    end
end