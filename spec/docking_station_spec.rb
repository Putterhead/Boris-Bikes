require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'can set a capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
<<<<<<< HEAD
=======
  
>>>>>>> shiawase/day-three

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'does not release bike' do
      bike = Bike.new
      bike.report
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'Bike is broken'
    end
  end
 
 


  it { is_expected.to respond_to(:dock).with(1).argument }

<<<<<<< HEAD
   describe 'initialization' do
     subject { DockingStation.new }
     let(:bike) { Bike.new }
     it 'defaults capacity' do
       described_class::DEFAULT_CAPACITY.times do
         subject.dock(bike)
       end
       expect{ subject.dock(bike) }.to raise_error 'Docking Station is full'
     end
   end
  # describe '#dock' do
  #   it 'raises an error when the docking station is full' do
  #     (subject.capacity).times { subject.dock Bike.new}
  #     expect { subject.dock Bike.new }.to raise_error 'Docking Station is full'
  #   end
  # end
=======
  describe '#dock' do
    it 'raises an error when the docking station is full' do
      (subject.capacity).times { subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error 'Docking Station is full'
    end
  end
>>>>>>> shiawase/day-three


  it { is_expected.to respond_to(:bike) }
end
