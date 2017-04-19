class GolfClubsController < ApplicationController
  before_action :authenticate_user!
  
  def owner_index
    @sorted_reservations = GolfClub.first.reservations.sort_by { |r| r.tee_time }
  end

  def show
    @golf_club = GolfClub.first
    @sorted_reservations = current_user.reservations.sort_by { |r| r.tee_time }
    if current_user
      @reservation = Reservation.new
    end
  end

  def edit
    @golf_club = GolfClub.first
  end

  def update
    @golf_club = GolfClub.first
    if @golf_club.update_attributes(golf_club_params)
      redirect_to owner_index_path, notice: "Your Golf Club Info Is Updated!"
    else
      redirect_to edit_golf_club_path, alert: "Golf Club Info Update Failed"
    end
  end

  private
  def golf_club_params
    params.require(:golf_club).permit(:name)
  end
end
