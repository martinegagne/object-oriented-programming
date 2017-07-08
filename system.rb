class System

  attr_reader :bodies

  def initialize
    @bodies = []
  end

  def add(body)
    #will add a celestial body to the list
    @bodies << body
  end

  def total_mass
    # add up the mass of all the bodies in bodies, and return it.
    sum = 0
      @bodies.each do |body|
      sum += body.mass
      end
  end

end

class Body

  attr_reader :name, :mass

  def initialize(name, mass)
  @mass = mass
  @name = name
  end

end

class Planet < Body

  attr_reader :name, :mass

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = 24 #number of hours it takes for the planet to rotate all the way around once.
    @year = 365 #number of days it takes for the planet to orbit the sun once. Whether you want to express this in Earth days or the planet's days is up to you.
  end
end

class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = "G-type"
  end
end

class Moon < Body
  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = 30#number of days it takes for the moon to orbit its planet
    @planet = planet
  end
end

earth = Planet.new("Earth", 6115, 24, 365)
sun = Star.new("Sun", 2054, "G-stype")
moon = Moon.new("Moon", 7511, 30, earth)

milky_way = System.new
# milky_way.add(earth)
# milky_way.add(sun)
# milky_way.add(moon)

# p milky_way.bodies

p milky_way.total_mass
