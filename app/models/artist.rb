class Artist < ActiveRecord::Base
    has_many :songs

    def song_count_full
        "#{self.name} #{self.song_count} songs"
    end

    def song_count 
        self.songs.count
    end
end
