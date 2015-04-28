require('rspec')
require('passport')

describe(Passport) do
  before() do
    Passport.clear()
  end

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

  describe("#add_place") do
    it("adds a location") do
      test_place = Passport.new("Vancouver")
      test_place.add_place()
      expect(Passport.all_places()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("washes away all of the places you've been to") do
      Passport.new("Boston").add_place()
      Passport.clear()
      expect(Passport.all_places()).to(eq([]))
    end
  end
end
