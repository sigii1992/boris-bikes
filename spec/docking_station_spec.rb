require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  describe 'release bike method' do
    it 'releases working bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'does not release bike if no bikes' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  
  it 'pass a docked bike to the bikes array' do
    docking_station = subject
    docking_station.dock_bike("bike1")
    expect(docking_station.bikes).to include("bike1")
  end

  it 'can not dock a bike if there is more that capacity' do
    subject.capacity.times { subject.dock_bike Bike.new }
    expect { subject.dock_bike(Bike.new) }.to raise_error 'Docking station is full'
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end
end