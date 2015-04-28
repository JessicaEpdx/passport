class Passport
  @@our_passport = []

  define_method(:initialize) do |location|
    @location = location

  end

  define_method(:places) do
    @location
  end

  define_singleton_method(:all_places) do
    @@our_passport
  end

  define_singleton_method(:clear) do
    @@our_passport = []
  end

  define_method(:add_place) do
    @@our_passport.push(self)
  end

  define_method(:remove) do
    @@our_passport.delete(self)
  end
end
