class CD
  @@collection = []

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



end
