require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes

  def initialize#(name)
    #@name = name
    #array which includes each bike
    @docked_bikes = []
  end

  def release_bike
    if @docked_bikes.length > 0
      @docked_bikes[-1]
      @docked_bikes.pop
    else
      fail "No bikes found"
    end
    #if docked_bikes.empty?
    # => puts "sorry pal no bikes to be had"
    #else
    # => @docked_bikes[-1]
    # => pop @docked_bikes
    #"Bike Released"
  end

  def dock_bike(bike)
    #number of spaces
    #Return if the number of bikes in docked_bikes is greater than 1
    @bike = bike
    return fail "Docking station full" if @docked_bikes.length >= 1
    @docked_bikes.push(@bike)
  end

  def list
    puts "Number of bikes docked: #{@docked_bikes.length}."
    puts "List of bike identifiers: #{@docked_bikes}"
  end
end


#set dock_bikes to attr reader so access outside instance of class
#so that every time we want to, we can get a list of all bikes in that array
