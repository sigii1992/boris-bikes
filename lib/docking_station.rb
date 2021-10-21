 require_relative 'bike'

class DockingStation
  attr_accessor :capacity, :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    working_bikes = @bikes.select { |bike| bike.broken_bike == false }
    fail 'No bikes available' if working_bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail 'Docking station is full' if full?
    @bikes << bike
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= capacity
  end
end

 