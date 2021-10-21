require 'bike'

describe Bike do
   it { is_expected.to respond_to :working? }
  # it 'checks if bike works' do
  #   bike = Bike.new
  #   expect(bike).to respond_to :working?
  # end

  it { is_expected.to respond_to :report_broken_bike }

  it "reports broken bike" do
    subject.report_broken_bike
    expect(subject).to be_broken
  end

  
end