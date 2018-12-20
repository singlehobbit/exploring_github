class Wagon
  attr_reader :type, :weight_capacity, :cargo_weight

  def initialize(type, weight_capacity)
    @type = type
    @weight_capacity = weight_capacity
  end

  def load_with(kg)
    kg += cargo_weight if cargo_weight
    raise 'overrloading weight capacity' if kg > weight_capacity
    @cargo_weight = kg
  end

  def empty
    self.cargo_weight = 0
  end
end
