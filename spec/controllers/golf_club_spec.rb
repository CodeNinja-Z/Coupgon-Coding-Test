RSpec.describe GolfClubsController, type: :controller do
  let(:golf_club) { create :golf_club, :with_owner }
  let(:owner) { golf_club.users.first }

  before { sign_in owner }
  # before { puts owner.inspect; sign_in(owner) }

  describe '#owner_index' do
    subject { get :owner_index }

    it { should have_http_status 302 }
  end

  describe '#show' do
    subject { get :show }

    it { should have_http_status 302 }
  end

  describe '#edit' do
    subject { get :edit, params: { id: golf_club.id } }

    it { should have_http_status 302 }
  end

  # describe '#update' do
    # context 'on success' do
    #   it 'will redirect to owner index' do
    #     put :update, params: { id: golf_club.id }
    #     expect(response).to redirect_to owner_index_path
    #   end
    # end

    # context 'on failure' do
    #   before { put :update, params: { id: 0 } }

    #   it 'will flash alert message' do
    #     expect(flash[:alert]).to eql 'Golf Club Info Update Failed'
    #   end

    #   it { should redirect_to edit_golf_club_path }
    # end
  # end
end
