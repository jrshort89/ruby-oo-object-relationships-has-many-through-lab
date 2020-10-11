require 'pry'

class Artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_accessor :name

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, genre)
    end

    def songs
        Song.songs(self)
    end

    def new_song(name, genre)
        song = Song.new_song(name, self, genre)
    end

    def genres
        self.songs.map { |song| song.genre }
    end
end