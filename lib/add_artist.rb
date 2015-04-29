class Artist
  @@artists=[]

  define_method(:initialize) do |artist|
    @artist = artist
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

end
