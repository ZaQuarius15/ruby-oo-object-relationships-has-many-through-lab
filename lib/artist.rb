class Artist

    attr_accessor :name, :genre 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        self.songs.each_with_object([]) do |song, art_gens|
            art_gens << song.genre
        end
    end
end