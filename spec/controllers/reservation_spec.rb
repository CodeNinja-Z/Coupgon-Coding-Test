RSpec.describe ReservationsController, type: :controller do
  let(:reservation) { create :reservation }
  let(:user) { reservation.user }
  let(:golf_club) { reservation.golf_club }

  before { sign_in user }

  describe '#index' do
    subject { get :index, params: { golf_club_id: golf_club.id } }

    it { should have_http_status 302 }
  end

  # describe '#create' do
  #   context 'on success' do
  #     before do
  #       post :create, params: { golf_club_id: golf_club.id }
  #     end

  #     it 'will flash success message' do
  #       expect(flash[:success]).to eql 'You have successfully booked a reservation!'
  #     end

  #     it { should redirect_to root_path }
  #   end

    # context 'on failure' do
    # end
  # end

  describe '#edit' do
    subject { get :edit, params: { golf_club_id: golf_club.id, id: reservation.id } }

    it { should have_http_status 302 }
  end

  # describe '#update' do
  # end
end
