feature 'Book a Reservation' do
  let(:user) { create :user }

  before { sign_in user }

  scenario 'creating a new reservation' do
    visit root_path

    # find(:select, 'reservation_tee_time_1i').find(:option, '2017').select_option
    select '2017',  from: "reservation[tee_time(1i)]"
    select 'April', from: "reservation[tee_time(2i)]"
    select '21',    from: "reservation[tee_time(3i)]"
    select '04 PM', from: "reservation[tee_time(4i)]"
    select '40',    from: "reservation[tee_time(5i)]"

    expect {
      click_button 'Reserve'
    }.to change { Reservation.count }.from(0).to(1)
  end
end
