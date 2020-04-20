class ClientsController < ApplicationController

    def index
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        if @client.save
            session[:client_id] = @client.id
            redirect_to @client
        else
            render :new

    def show
        @client = Client.find(params[:id])
    end
    
    private

    def client_params
        params.require(:client).permit(:first_name, :last_name, :email, :phone, :password)
    end
end
