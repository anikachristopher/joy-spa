class AppointmentsController < ApplicationController
    before_action :login_required

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = current_client.appointments.build(appointment_params(:date, :time))
        if appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def show
    end

    def destroy
    end

    private

    def appointment_params
    end
    
end
