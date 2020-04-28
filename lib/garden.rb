class Garden
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def plants
    Plant.all.select do |palant|
      palant.garden == self
    end
  end
end
