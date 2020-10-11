class Song 
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
    end

    attr_accessor :name, :artist, :genre

    def self.all
        @@all
    end

    def self.songs(artist)
        self.all.select { |song| song.artist == artist }
    end

    def self.new_song(name, artist, genre)
        Song.new(name, artist, genre)
    end

    def self.songs_by_genre
        self.all { |song| song.genre == self }
    end
end