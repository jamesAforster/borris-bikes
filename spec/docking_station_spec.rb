require 'docking_station'

describe DockingStation do
  let (:bike) {Bike.new}
  
  describe 'initialize' do
    it 'is an instance of DockingStation' do
      expect(subject).to be_an_instance_of DockingStation
    end
  end

  describe 'release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'bike that is released is working' do
      subject.dock_bike(bike)
      subject.release_bike
      expect(bike).to be_working
    end

    it "will raise an error if you try to take a bike that isn't there" do
      expect { raise subject.release_bike }.to raise_error(RuntimeError)
    end

    it 'will release a bike if there is a bike to release' do
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'docked bikes will reduce by 1 when method release_bike is called' do
      subject.dock_bike(bike)
      subject.release_bike
      expect(subject.docked_bikes.length).to eq(0)
    end
  end
  
  describe "#dock_bike(bike)" do

    it "docks a bike into the docking_station instance" do
      subject.dock_bike(bike)
      expect(subject.docked_bikes).to include(bike)
    end

    it "will not dock a bike if there is a bike docked already" do
      bike2 = Bike.new
      subject.dock_bike(bike)
      expect { raise subject.dock_bike(bike2)}.to raise_error(RuntimeError)
    end

  end


end
