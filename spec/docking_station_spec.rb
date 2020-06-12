require 'docking_station'

describe DockingStation do
  let (:bike) {Bike.new}
  let (:docking_station) {DockingStation.new}
  
  describe 'initialize' do
    it 'can be created with a certain number of bikes' do
      expect(docking_station).to be_an_instance_of DockingStation
    end
  end
  describe 'release_bike' do
    #it 'returns release bike when bike released' do
      #docking_station = DockingStation.new(10)
      #expect(docking_station.release_bike).to eql('Bike Released')
    #end
    it { is_expected.to respond_to :release_bike }
    it 'gets a bike' do
      docking_station.release_bike
      expect(bike).to be_working
    end

    #Test 1 - docking station empty
    it "will raise an error if you try to take a bike that isn't there" do
      expect { raise docking_station.release_bike}.to raise_error()
    end

    #There will be an error if you try to release a bike when docked_bike.length is equal to 0
    #expect { raise StandardError }.to raise_error
    
    #Test 2 - docking station has a bike 4 u :)
  end

  describe "#dock_bike(bike)" do
    it "docks a bike into the docking_station instance" do
      docking_station.dock_bike(bike)
      expect(docking_station.docked_bikes).to include(bike)
    end
  end
end
