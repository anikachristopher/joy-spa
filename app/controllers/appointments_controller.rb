class AppointmentsController < ApplicationController
    before_action :login_required

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = current_client.appointments.build(appointment_params)
        if appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end

    def update
        @appointment = current_client.appointments.find_by(id: params[:id])
        @appointment.update(appointment_params)
        redirect_to appointment_path(@appointment)
    end

    def show
    end

    def destroy
    end

    private

    def appointment_params
        params.require(:appointment).permit(:date, :time)
    end

end
