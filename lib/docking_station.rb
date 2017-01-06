require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize (capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'Docking Station is full' if full? #@bikes.count >= 20
    bikes << bike

  end

  def release_bike
    fail 'No bikes available' if empty?
<<<<<<< HEAD
    fail 'Bike is broken' if @bikes[-1].broken
    @bikes.pop
  end

  def bike
    @bikes
=======
    bikes.pop
  end

  def bike
    bike
>>>>>>> shiawase/day-three
  end

  private

<<<<<<< HEAD
  attr_reader :bikes

  # def broken
  #   @bikes.report = true
  # end

  def full?
    @bikes.size >= @capacity
=======
  attr_reader :bike 

  def full?
    bikes.size >= @capacity
>>>>>>> shiawase/day-three
  end

  def empty?
    bikes.size == 0
  end
end
