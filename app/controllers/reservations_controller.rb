class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET /reservations
  def index
    @reservations = Reservation
    @reservations = @reservations.where(:lecture_id => params&.[](:lecture_id)) if params&.[](:lecture_id)
    @reservations = @reservations.where(:student_id => params&.[](:student_id)) if params&.[](:student_id)
    @reservations = @reservations.all
    render json: {reservations: @reservations}

  end

  # GET /reservations/1
  def show
    render json: {reservation:@reservation}
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: {reservation:@reservation}, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: {reservation:@reservation}
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reservation_params
      params.require(:reservation).permit(:lecture_id, :activity_id, :student_id, :grade, :status)
    end
end
