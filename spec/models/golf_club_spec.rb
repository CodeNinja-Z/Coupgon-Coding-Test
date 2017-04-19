RSpec.describe GolfClub, type: :model do
  it "has a valid factory" do
    golf_club = create :golf_club, :with_users_and_reservations
    expect(golf_club).to be_valid
  end
end
