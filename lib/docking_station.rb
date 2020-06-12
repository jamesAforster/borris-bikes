require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    if @docked_bikes.length > 0
      @docked_bikes[-1]
      @docked_bikes.pop
    else
      fail "No bikes found"
    end
  end

  def dock_bike(bike)
    @bike = bike
    return fail "Docking station full" if @docked_bikes.length >= 20
    @docked_bikes.push(@bike)
  end

  def list
    puts "Number of bikes docked: #{@docked_bikes.length}."
    puts "List of bike identifiers: #{@docked_bikes}"
  end
end
