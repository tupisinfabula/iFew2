class Workout < ActiveRecord::Base

    validates :date, presence: true
    validates :workout, presence: true
    validates :mood, presence: true
    validates :length, presence: true
    validates :time, presence: true
  #playlist = RSpotify::Playlist.find('idclient', 'id')

end
