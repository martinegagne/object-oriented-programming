class System

  attr_reader :bodies

  # initialize
  @@bodies = []

  def add
    #will add a celestial body to the list
    sum = 0
    @@bodies << Body.new
  end

  def total_mass
    # add up the mass of all the bodies in bodies, and return it.
    @@bodies.each do |mass|
      sum += mass
      return mass
  end

end

class Body

  attr_reader :name, :mass

  initialize (name, mass)
  @mass = mass
  @name = name

end

class Planet
  def initialize(name, mass)
    super(name, mass)
    @day = 24 #number of hours it takes for the planet to rotate all the way around once.
    @year = 365 #number of days it takes for the planet to orbit the sun once. Whether you want to express this in Earth days or the planet's days is up to you.
  end
end

class Star
  def initialize(name, mass)
    super(name, mass)
    @type = "G-type"
  end
end

class Moon
  def initialize(name, mass)
    super(name, mass)
    @month = 30#number of days it takes for the moon to orbit its planet
    @planet = super(planet)
  end
end
