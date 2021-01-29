class Car
  # DATA / DONNEE
  # ????
  # @color = "red"
  # @brand = "Renault"

  def initialize(color, brand)
    @color = color
    @brand = brand
    @engine_started = false
  end

  # BEHAVIOR / COMPORTEMENT
  # INSTANCE METHOD

  def start_engine
    @engine_started = true
  end

  # CLASS METHOD

  def self.brands
    ["Toyota", "Renault"]
  end
end
