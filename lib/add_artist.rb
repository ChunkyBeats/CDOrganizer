class Artist
  @@artists=[]
  @@artist_cd = {}

  define_method(:initialize) do |artist|
    @artist = artist
    @id = @@artists.length().+(1)
  end

  define_method(:name) do
    @artist
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_method(:add_cd) do |cd|
    @@artist_cd.store(self, cd)
  end

  define_singleton_method(:clear_cd) do
    @@artist_cd = {}
  end

  define_method(:id) do
    @id
  end

end
