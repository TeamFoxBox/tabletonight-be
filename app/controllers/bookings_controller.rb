class BookingsController < ApplicationController
    def index
        bookings = Booking.all
        render json: bookings
    end

    def create
        booking = Booking.new(booking_params)
        if booking.save
            render json: booking, status: :created
        else
            render json: {errors: booking.errors}, status: 422
        end
        # booking_info = Booking.create(booking_params)
        # render json: booking_info

    end

    def booking_params
        params.require(:booking).permit(
            :user_id,
            :date,
            :time,
            :table,
            :party_size
        )
    end
end
