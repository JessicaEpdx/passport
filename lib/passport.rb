class Passport

  define_method(:initialize) do |location|
    @location = location
  end


  define_method(:places) do
    @location
  end
end
