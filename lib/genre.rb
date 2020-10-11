class Genre
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_reader :name

    def self.all
        @@all
    end

    def songs
        Song.songs_by_genre
    end

    def artists
        self.songs.map { |song| song.artist }
    end
end