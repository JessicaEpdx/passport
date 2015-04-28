require('rspec')
require('passport')

describe(Passport) do

  describe("#places") do
    it("retrieves the place input") do
      test_place = Passport.new("Zimbabwe")
      expect(test_place.places()).to(eq("Zimbabwe"))
    end
  end

end
