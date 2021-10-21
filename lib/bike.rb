require_relative 'docking_station'

class Bike
  attr_accessor :broken_bike

  def initialize
    @broken_bike = false
  end

  def working?
    true
  end

  def report_broken_bike
    @broken_bike = true
  end

  def broken?
    @broken_bike 
  end
end

