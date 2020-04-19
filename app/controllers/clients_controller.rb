class ClientsController < ApplicationController

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        if @client.save


        else
            render :new
    end
    
    private

    def client_params
        params.require(:client).permit(:first_name, :last_name, :email, :phone, :password)
    end
end
