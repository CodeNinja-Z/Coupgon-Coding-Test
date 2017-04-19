RSpec.describe User, type: :model do
  subject(:user) { create :user }

  describe 'validation' do
    it 'has a valid factory' do
      expect(user).to be_valid
    end
  end

  describe '#set_golf_club' do
    it 'belongs to the first golf club' do
      expect(user.golf_club_id).to eq(GolfClub.first.id)
    end
  end

  describe '#full_name' do
    before do
      user.first_name = 'Carlos'
      user.last_name = 'Zhao'
    end 

    its(:full_name) { should eql 'Carlos Zhao' }
  end
end
