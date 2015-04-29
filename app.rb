require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/add_artist")
require("./lib/cdorganizer")
require("pry")


get ("/") do
  erb(:index)
end

get("/collection") do
  @cds = CD.all()
  erb(:collection)
end

get("/collection/new") do
  erb(:collection_form)
end

post('/collection') do
  test_title = params.fetch('title')
  test_title = CD.new(test_title).save()
  @cds = CD.all()
  erb(:success)
end

get("/artist_collection") do
  erb(:artist_collection)
end

get("/artist_collection/new") do
  erb(:artist_collection_form)
end

get("artist/:id") do
  erb(:artist)
end

post("/artist_collection") do
  test_artist = params.fetch('artist_name')
  test_artist = Artist.new(test_artist).save()
  @test_artist = Artist.all()
  erb(:success_artist)
end

get("/artist_collection/:id/artist_works") do
  @cds = CD.all
  erb(:artist_works)
end

post("/artist") do
  cd_array =[]
  # artist = params.fetch('artist')
  answer = params.fetch('yes')
  binding.pry
  artist = Artist.new(artist).save()
  if answer == "yes"
    cd_array.push(answer)
  cd_array.each do |cd|
    artist.add_cd(cd)
  end
end
  erb(:success_artist)
end


get("artist_collection/:id") do
end
