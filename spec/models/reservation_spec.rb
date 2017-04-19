RSpec.describe Reservation, type: :model do

  describe '#timeslot_available' do
    subject(:reservation) { create :reservation }
    
    context 'when the time is available' do
      before { reservation.tee_time = reservation.tee_time + 20.minutes}
      
      it { should be_valid }
    end

    context 'when the time is taken' do
      it { should_not be_valid }
    end
  end
end
