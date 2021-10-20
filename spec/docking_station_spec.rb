require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  # it 'releases a bike' do
    # docking_station = DockingStation.new
    # expect(docking_station).to respond_to :release_bike
  # end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  
  it 'pass a docked bike to the bikes array' do
    docking_station = subject
    docking_station.dock_bike("bike1")
    expect(docking_station.bikes).to include("bike1")
  end
end