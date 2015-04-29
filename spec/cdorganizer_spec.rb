require('rspec')
require('cdorganizer')
require('add_artist')

describe (CD) do
  before() do
    CD.clear()
  end

  describe("#title") do
    it("it returns the title of the cd") do
      test_cd = CD.new("Frozen")
      test_cd.save()
      expect(test_cd.title()).to(eq("Frozen"))
    end
  end

  describe("#save") do
    it("saves a CD to the collection") do
      test_cd = CD.new("Frozen")
      test_cd.save()
      expect(CD.all()).to(eq([test_cd]))
    end
  end

  describe(".all") do
    it("should be empty at the beginning") do
      expect(CD.all()).to(eq([]))
    end
  end

  # describe("#add_artist") do
  #   it("adds an artist for the CD in an array") do
  #   test_cd = CD.new("Doggystyle")
  #   test_cd.save()
  #   test_cd.add_artist("Snoop Dogg")
  #   expect(CD.sort_by_artist()).to(eq({"Snoop Dogg" => test_cd}))
  #   end
  # end
end
