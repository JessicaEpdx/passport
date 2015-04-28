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

end
