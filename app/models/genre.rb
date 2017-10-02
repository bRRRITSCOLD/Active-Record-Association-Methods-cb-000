class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.count(:songs)
  end

  def artist_count
    self.count(:artists)
  end

  def all_artist_names
    self.artists
  end
end
