class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song) 
        @songs.push(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @songs.push(song)
        song.artist = self
    end

    def songs
        Song.all.find_all{|song| song.artist == self} 
    end

    def self.song_count
        Song.all.count
    end
end