class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_golf_club

  def index
    @reservations = current_user.reservations 
  end

  def create
    @reservation = @golf_club.reservations.build(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      flash[:notice] = "You have successfully booked a reservation!"
    else
      flash[:alert] = "The timeslot is taken. Please select a different time."
    end
    redirect_to root_path
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update_attributes(reservation_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:tee_time, :golf_club_id)
  end

  def load_golf_club
    @golf_club = GolfClub.first
  end
end
