class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count(:id)
  end

  def artist_count
    self.artists.count(:name)
  end

  def all_artist_names
    self.artists.pluck(:name)
  end
end
