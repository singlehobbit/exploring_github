class Train
  attr_reader :name, :company

  def initialize(name, company)
    @name = name
    @company = company
    @wagons = []
  end

  def each
    @wagons.each { |wagon| yield wagon }
  end

  def total_weight
    map(&:weight).reduce(:+)
    #same as inject(0.0) { |total, w| total += w.weight }
  end

  def transported_cargo
    map(&:type)
  end

  def empty_wagons
    map!(&:empty)
  end
end
