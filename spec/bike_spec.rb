require_relative 'bike'

describe Bike do
  it 'checks if bike works' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end
end