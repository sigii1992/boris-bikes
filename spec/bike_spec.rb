require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }
  # it 'checks if bike works' do
  #   bike = Bike.new
  #   expect(bike).to respond_to :working?
  # end
end