require('rspec')
require('cdorganizer')

describe (CD) do
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
      expect(CD.all()).to(eq(test_cd))
    end
  end

end
