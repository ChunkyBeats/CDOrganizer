class CD
  @@collection = []

  @@collection_by_artist = {}

  define_method(:initialize) do |title|
    @title = title
  end

  define_method(:title) do
    @title
  end

  define_method(:save) do
    @@collection.push(self)
  end

  define_singleton_method(:all) do
    @@collection
  end

  define_singleton_method(:clear) do
    @@collection=[]
  end

  define_method(:add_artist) do |artist|
    @@collection_by_artist.store(artist, self)
  end

  define_singleton_method(:sort_by_artist) do
    @@collection_by_artist
  end



end
