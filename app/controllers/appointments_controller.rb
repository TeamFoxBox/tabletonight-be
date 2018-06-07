class AppointmentsController < ApplicationController
    def index
        appointments = Appointment.all
        render json: apointments
    end

    def create
        appointment = Appointment.new(appointment_params)
        if appointment.save
            payload = {
                appointment: appointment,
            }
            render json: payload, status: :created
        else
            render json: {errors: user.errors}, status: 422
        end
        # appointment_info = Appointments.create(appointment_params)
        # render json: appointment_info

    end

    def appointment_params
        params.require(:appointment).permit(
            :date,
            :time
        )
    end
end


#     def create
#       user = User.new(user_params)
#       if user.save
#         token = Knock::AuthToken.new(payload: { sub: user.id }).token
#         payload = {
#           user: user,
#           jwt: token
#         }
#         render json: payload, status: 201
#       else
#         render json: {errors: user.errors}, status: 422
#       end
#     end
# end
