class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @room = @reservation.room
    @reservation_date = @reservation.reservation_date
    @num_guests = @reservation.num_guests
    @num_tables = @reservation.num_tables
    @num_chairs = @reservation.num_chairs
    @num_adapters = @reservation.num_adapters
    @num_whiteboards = @reservation.num_whiteboards
    @has_alcohol = @reservation.has_alcohol
  end


  def confirm
  end

  def create
    @reservation = Reservation.create!(reservation_params)
    redirect_to '/done'
  end

  def show
    @reservation = Reservation.find(params[:reservation_id])
    @room = @reservation.room
  end

  private
  def reservation_params
    params.require(:reservation).permit(:reservation_date)
  end



end
