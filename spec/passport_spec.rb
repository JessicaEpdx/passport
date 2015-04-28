require('rspec')
require('passport')

describe(Passport) do

  describe("#places") do
    it("retrieves the place input") do
      test_place = Passport.new("Zimbabwe")
      expect(test_place.places()).to(eq("Zimbabwe"))
    end
  end
  describe(".all_places") do
    it("returns an empty array") do
      expect(Passport.all_places()).to(eq([]))
    end
  end  

end
